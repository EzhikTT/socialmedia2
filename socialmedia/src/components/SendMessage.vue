<template>
    <div>
        <textarea v-model="message"></textarea>
        <div></div>
    </div>
</template>

<script lang="ts">
import Vue from 'vue'
export default Vue.extend({
    name: 'SendMessage',
    data() {
        return {
            message: ''
        };
    },
    methods: {
        send(): void {
            fetch('', {}).then(res=>res.json()).then(res => {
                this.$emit('send', this.message);
                this.message = '';
            }).catch();
        }
    }
})
</script>

<style lang="scss" scoped>

</style>