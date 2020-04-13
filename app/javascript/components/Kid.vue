<template>
  <div class="mt-4">
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
export default {
  props: ["info"],
  methods: {
    testing: () => {
      console.log("testing");
    }
  }
};
</script>
