<template>
    <div class="container">
      <table class="crypto-table">
        <thead>
          <tr>
            <th>#</th>
            <th @click="sort('name')">Coin Name</th>
            <th @click="sort('symbol')">Coin Symbol</th>
            <th @click="sort('current_price')">Price</th>
            <th @click="sort('price_change_percentage_1h_in_currency')">1h Move</th>
            <th @click="sort('market_cap')">Market Cap</th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="crypto in sortedCrypto" :key="crypto.id">
            <td class="rank">{{ crypto.rank }}</td>
            <td>
              <img :src="crypto.image" :alt="crypto.name" class="coin-icon" />
              {{ crypto.name }}
            </td>
            <td>{{ crypto.symbol }}</td>
            <td>{{ 'ZAR ' + crypto.current_price.toFixed(2) }}</td>
            <td>{{ crypto.price_change_percentage_1h_in_currency }}</td>
            <td>{{ 'ZAR ' + crypto.market_cap.toLocaleString() }}</td>
          </tr>
        </tbody>
      </table>
      <router-link class="contact-link" to="/contact">Contact Us</router-link>
    </div>
  </template>
  
  <script>
  import axios from 'axios';
  
  export default {
    data() {
      return {
        cryptoData: [],
        sortKey: '',
        sortOrder: 1,
      };
    },
    computed: {
      sortedCrypto() {
        const sorted = this.cryptoData.slice().sort((a, b) => {
          const keyA = a[this.sortKey];
          const keyB = b[this.sortKey];
          return this.sortOrder * (keyA > keyB ? 1 : -1);
        });
        return sorted;
      },
    },
    methods: {
      async fetchData() {
        try {
          const response = await axios.get(
            'https://api.coingecko.com/api/v3/coins/markets',
            {
              params: {
                vs_currency: 'zar',
                ids: 'bitcoin,ethereum,ripple,cardano,polkadot,binancecoin,dogecoin,litecoin,uniswap,avalanche-2',
                order: 'market_cap_desc',
                per_page: 10,
                page: 1,
                sparkline: false,
                localization: false,
              },
            }
          );
          this.cryptoData = response.data;
          const coinIds = this.cryptoData.map((crypto) => crypto.id).join(',');
          const metadataResponse = await axios.get(
            `https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&ids=${coinIds}`
          );
          const metadataMap = new Map(metadataResponse.data.map((crypto) => [crypto.id, crypto]));
          this.cryptoData.forEach((crypto, index) => {
            if (metadataMap.has(crypto.id)) {
              crypto.image = metadataMap.get(crypto.id).image;
              crypto.rank = index + 1;
            }
          });
        } catch (error) {
          console.error('Error fetching data:', error);
        }
      },
      sort(key) {
        if (this.sortKey === key) {
          this.sortOrder *= -1;
        } else {
          this.sortKey = key;
          this.sortOrder = 1;
        }
      },
    },
    mounted() {
      this.fetchData();
    },
  };
  </script>
  
  <style>
  .container {
    max-width: 800px;
    margin: 0 auto;
    padding: 20px;
  }
  
  .crypto-table {
    width: 100%;
    border-collapse: collapse;
    border: 1px solid #ccc;
    margin-top: 20px;
  }
  
  th,
  td {
    padding: 10px;
    text-align: left;
    border-bottom: 1px solid #ccc;
  }
  
  th {
    background-color: #f2f2f2;
    cursor: pointer;
  }
  
  th:hover {
    background-color: #e0e0e0;
  }
  
  .coin-icon {
    width: 20px;
    height: 20px;
    margin-right: 10px;
  }
  
  .rank {
    font-weight: bold;
  }
  
  .contact-link {
    display: block;
    margin-top: 20px;
    font-weight: bold;
    color: #333;
    text-decoration: none;
  }
  
  .contact-link:hover {
    text-decoration: underline;
  }
  </style>
  

  
  