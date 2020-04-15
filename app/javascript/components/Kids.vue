<template>
  <div>
    <kid
      v-for="(kid, index) in kidsList"
      :kid="kid"
      :index="index"
      :key="kid.id"
      @destroyedKid="getKidsList"
    ></kid>
  </div>
</template>

<script>
import axios from "axios";
import kid from "./Kid";

export default {
  data() {
    return {
      kidsList: null
    };
  },
  mounted: function() {
    this.getKidsList();
  },
  methods: {
    getKidsList() {
      axios.get("/kids").then(res => {
        this.kidsList = res.data;
      });
    }
  }
};
</script>