<template>
  <div>
    <h1 class="mb-4 font-sans font-bold text-2xl text-gray-800 tracking-wide">Resources</h1>
    <div class="grid grid-cols-4 gap-2">
      <resource-item v-for="(item, index) in items" :index="index" :key="item.id" :resource="item"></resource-item>
    </div>
  </div>
</template>

<script>
import ResourceItem from "./ResourceItem.vue";

export default {
  props: {
    items: {
      type: Object,
      required: true
    }
  },
  components: {
    "resource-item": ResourceItem
  }
};
</script>

<style></style>
