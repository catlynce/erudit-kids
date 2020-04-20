<template>
  <div>
    <div
      :style="{ backgroundImage: `url(${resource.resource_image_url})` }"
      class="card resource relative w-100 h-full rounded border border-gray-300"
    >
      <div class="absolute bottom-0 p-4 w-full bg-gray-700 rounded-b text-center">
        <a
          :href="resource.url"
          target="_blank"
          class="text-white uppercase"
          title="Click to open in new tab"
        >{{resource.name}}</a>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: ["resource"]
};
</script>

<style>
</style>