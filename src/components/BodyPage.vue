<template>
    <div class="main-body">
        <h1><span class="move-box">{{ msg }}</span> Welcome to DevOps!! <span class="move-box">{{ msg }}</span></h1>
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
    move-box{
        width:1.5rem;
        display:inline-block;
    }
   
    
</style>