<template>
  <div class="nav">
    <img
      class="nav-logo"
      src="@/assets/logo.png"
      alt=""
      @click="handleClickLogo"
    />
    <p>Whisper 聊天</p>
  </div>
</template>

<script lang="ts">
import Vue from "vue";

export default Vue.extend({
  data() {
    return {
      selectedId: 0
    };
  },
  methods: {
    handleClick(item: any) {
      this.$router.push({ path: item.link });
    },

    handleClickLogo() {
      this.$router.push({ path: "/" });
    }
  }
});
</script>

<style lang="postcss" scoped>
.nav {
  display: flex;
  align-items: center;
  height: 100%;
  position: relative;
  border-bottom: 1px solid var(--color-extra-light-border);
  &-logo {
    width: 30px;
    height: 30px;
    margin: 0 20px;
    cursor: pointer;
  }
  &-item {
    cursor: pointer;
    display: flex;
    justify-content: center;
    align-items: center;
    width: 80px;
    height: 100%;
    font-weight: 600;
  }
}

.selected {
  color: var(--color-success);
  position: relative;
  &::after {
    content: "";
    background: var(--color-success);
    position: absolute;
    bottom: 0;
    width: 50%;
    height: 2px;
  }
}
</style>
