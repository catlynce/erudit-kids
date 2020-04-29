<template>
  <div>
    <h1 class="mb-4 font-sans font-bold text-2xl text-gray-800 tracking-wide">Resources</h1>
    <div class="grid grid-cols-4 gap-4">
      <resource-item
        v-for="(item, index) in items"
        :index="index"
        :key="item.id"
        :resource="item"
        @queue="queueResource"
        @unqueue="unqueueResource"
      ></resource-item>
    </div>
  </div>
</template>

<script>
import ResourceItem from "./ResourceItem.vue";

export default {
  props: {
    items: {
      type: Array,
      required: true
    }
  },
  data() {
    return {
      resources: []
    };
  },
  components: {
    "resource-item": ResourceItem
  },
  methods: {
    queueResource: function(resource) {
      console.log("triggered queue");
      this.resources.push(resource);
    },
    unqueueResource: function(resource) {
      console.log("triggered unqueue");
      this.resources.splice(this.resources.indexOf(resource), 1);
    }
  }
};
</script>

<style></style>
