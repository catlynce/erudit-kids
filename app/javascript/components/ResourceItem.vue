<template>
  <div>
    <div
      :style="{ backgroundImage: `url(${resource.resource_image_url})` }"
      class="card resource relative w-100 h-full rounded border border-gray-300"
      @click.prevent="toggleResource"
    >
      <div
        class="absolute bottom-0 p-4 w-full bg-gray-700 rounded-b text-center"
        :class="{ ['bg-green-500 text-black']: isActive }"
      >
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
  props: ["resource"],
  data() {
    return {
      toggle: false,
      isActive: false
    };
  },
  mounted: () => {
    // console.log("testing");
  },
  methods: {
    toggleResource() {
      // console.log(this.resource);
      this.toggle = !this.toggle;
      if (this.toggle) {
        this.isActive = true;
        this.$emit("queue", this.resource.id);
      } else {
        this.isActive = false;
        this.$emit("unqueue", this.resource.id);
      }
    }
  }
};
</script>

<style>
</style>