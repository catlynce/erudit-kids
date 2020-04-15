<template>
  <div class="mt-4 relative">
    <button class="absolute right-0 top-0" @click="remove">Delete</button>
    <form>
      <div>
        <input type="text" name="name" v-model="kid.name" @keyup="update" />
      </div>
      <div>
        <input type="text" name="username" v-model="kid.username" @keyup="update" />
      </div>
      <div>
        <input type="text" name="email" v-model="kid.email" @keyup="update" />
      </div>
      <div>
        <input type="date" name="birthdate" v-model="kid.birthdate" />
      </div>
    </form>
  </div>
</template>

<script>
import axios from "axios";

export default {
  props: ["kid"],
  data() {
    return {};
  },
  methods: {
    update() {
      console.log(this.kid);
      axios
        .patch(`/kids/${this.kid.id}`, {
          ...this.kid
        })
        .then(res => {
          console.log(res.data);
        });
    },
    remove() {
      axios.delete(`/kids/${this.kid.id}`).then(data => {
        this.$emit("destroyedKid");
      });
    }
  }
};
</script>
