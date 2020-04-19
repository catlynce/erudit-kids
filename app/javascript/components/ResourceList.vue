<template>
  <div>
    <h1>Resource List</h1>
    <div v-for="(item, index) in items" :index="index" :key="item.id">
      <div>{{ item.name }}</div>
      <div>{{ item.url }}</div>
      <img :src="item.resource_image_url" alt />
    </div>
  </div>
</template>

<script>
export default {
  props: {
    items: {
      type: Array,
      required: true
    }
  }
};
</script>

<style></style>
