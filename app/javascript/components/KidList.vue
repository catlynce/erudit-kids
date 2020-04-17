<template>
  <div>
    <kid-item
      v-for="(kid, index) in kidList"
      :kid="kid"
      :index="index"
      :key="kid.id"
      @destroyedKid="getKidList"
    ></kid-item>
  </div>
</template>

<script>
import axios from "axios";
import KidItem from "./KidItem.vue";

export default {
  name: "KidList",
  data() {
    return {
      kidList: null
    };
  },
  mounted: function() {
    this.getKidList();
  },
  methods: {
    getKidList() {
      axios.get("/kids").then(response => {
        this.kidList = response.data;
      });
    }
  },
  components: {
    "kid-item": KidItem
  }
};
</script>
