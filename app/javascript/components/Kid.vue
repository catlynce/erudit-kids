<template>
  <div class="mt-4 relative">
    <span class="absolute right-0 top-0" @click="remove">Delete</span>
    <form action="">
      <div>
        <input type="text" name="name" :value="info.name" />
      </div>
      <div>
        <input type="text" name="username" :value="info.username" />
      </div>
      <div>
        <input type="text" name="email" :value="info.email" />
      </div>
      <div>
        <input type="date" name="birthdate" :value="info.birthdate" />
      </div>
    </form>
  </div>
</template>

<script>
import axios from "axios";

export default {
  props: ["info"],
  data() {
    return {};
  },
  methods: {
    remove() {
      console.log("the kid id is %s", this.info.id);
      axios.delete(`/kids/${this.info.id}`).then(data => {
        console.log(data);
      });
    }
  }
};
</script>
