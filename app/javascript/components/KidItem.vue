<template>
  <div class="mt-4 relative">
    <div class="absolute right-0 top-0">
      <button
        class="static mr-2 px-3 rounded border border-blue-500 bg-blue-300"
        @click="edit"
        v-text="this.editMode ? 'Close':'Edit'"
      ></button>
      <button
        class="static px-3 rounded border border-red-500 bg-red-200 rounded"
        @click="remove"
      >Delete</button>
    </div>

    <div v-if="this.editMode">
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
    <div v-else>{{kid.username}}</div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "KidItem",
  props: ["kid"],
  data() {
    return {
      editMode: false
    };
  },
  methods: {
    edit() {
      console.log(this.kid);
      this.editMode = !this.editMode;
    },
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
