<template>
    <div class="main-body">
        <h1><span style="width:1.5rem;display:inline-block">{{ msg }}</span> Welcome to DevOps!</h1>
    </div>  
</template>

<script>
export default {
    name: 'BodyPage',
    data(){
        return {
            msg:'/'
        }
    },
    created(){
        setInterval(this.changeWords, 100)
    },
    methods:{
        changeWords(){
            if(this.msg === '/')
                this.msg = '\\';
            else if(this.msg === '\\')
                this.msg = '-';
            else
                this.msg = '/';
        },
    },

}
</script>

<style>
    h1 {
        color:#fff;
        font-size:3rem;
    }
    
</style>