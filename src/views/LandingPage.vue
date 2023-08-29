<template>
  <div class="container">
    <div class="loading-overlay" v-if="isLoading">
      <div class="loading-spinner"></div>
    </div>
    <table class="spot-table" v-else>
      <thead class="tbl-header">
        <tr>
          <th>#</th>
          <th @click="sort('FullName')">Coin Name</th>
          <th @click="sort('Price')">Price</th>
          <th @click="sort('Move')">Move</th>
          <th @click="sort('PercentageMove')">Percentage Move</th>
          <th @click="sort('Time')">Time</th>
        </tr>
      </thead>
      <tbody class="tbl-content">
        <tr v-for="spot in sortedSpotData" :key="spot.Id">
          <td class="rank">{{ spot.Id }}</td>
          <td>{{ spot.FullName }}</td>
          <td>{{ 'ZAR ' + spot.Price.toFixed(2) }}</td>
          <td>{{ spot.Move }}</td>
          <td>{{ spot.PercentageMove.toFixed(2) }}%</td>
          <td>{{ spot.Time }}</td>
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
      isLoading: true,
      spotData: [],
      sortKey: '',
      sortOrder: 1,
    };
  },
  computed: {
    sortedSpotData() {
      const sorted = this.spotData.slice().sort((a, b) => {
        const keyA = a[this.sortKey];
        const keyB = b[this.sortKey];
        return this.sortOrder * (keyA > keyB ? 1 : -1);
      });
      return sorted;
    },
  },
  methods: {
    async fetchSpotData() {
      try {
        const response = await axios.get('https://api.sharenet.co.za/api/v1/px2/spots');
        this.spotData = response.data;
        this.isLoading = false;
      } catch (error) {
        console.error('Error fetching spot data:', error);
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
    this.fetchSpotData();
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
    border: 1px solid grey;
    margin-top: 20px;
  }
  
  th,
  td {
    padding: 10px;
    text-align: left;
    border-bottom: 1px solid grey;
  }
  
  th {
    background-color: white;
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

  .loading-overlay {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  display: flex;
  justify-content: center;
  align-items: center;
  background-color: rgba(255, 255, 255, 0.8);
  z-index: 1;
}

.loading-spinner {
  border: 4px solid rgba(0, 0, 0, 0.1);
  border-top: 4px solid goldenrod;
  border-radius: 50%;
  width: 30px;
  height: 30px;
  animation: spin 1s linear infinite;
}

.container {
  max-width: 800px;
  margin: 0 auto;
  padding: 20px;
}

.crypto-table {
  width: 100%;
  table-layout: fixed;
  border-collapse: collapse;
  border: 1px solid rgba(255, 255, 255, 0.3);
  margin-top: 20px;
}

.tbl-header {
  background-color: rgba(255, 255, 255, 0.3);
}

.tbl-content {
  height: 300px;
  overflow-x: auto;
  margin-top: 0px;
  border: 1px solid rgba(255, 255, 255, 0.3);
}

th {
  padding: 20px 15px;
  text-align: left;
  font-weight: 500;
  font-size: 12px;
  color: black;
  text-transform: uppercase;
}

td {
  padding: 15px;
  text-align: left;
  vertical-align: middle;
  font-weight: 300;
  font-size: 12px;
  color: black;
  border-bottom: solid 1px rgba(255, 255, 255, 0.1);
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

@keyframes spin {
  0% {
    transform: rotate(0deg);
  }
  100% {
    transform: rotate(360deg);
  }
}
  </style>
  

  
  