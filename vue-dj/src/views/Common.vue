<template>

  <div v-if="data" class="common">
    <template>
      <h1>常见问题</h1>
      <el-tabs :tab-position="tabPosition" style="height: 2000px">
        <h2>产品</h2>
        <el-tab-pane :label="item.c_name" class="pane" v-for="item in data.data" :key="item.c_id">
          <el-collapse  @change="handleChange">
            <el-collapse-item :title="item.c_title.split('$$')[i-1]" v-for="i in item.c_title.split('$$').length" :key="i">
              <div>
                {{item.c_details.split('$$')[i-1]}}
              </div>
            </el-collapse-item> 


          </el-collapse>
        </el-tab-pane>
      </el-tabs>
    </template>
    <div id="a"></div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      tabPosition: "left",
      data:'',
      dd:'',
      c:'jklsajfksaf<br>dfadslfkjaslfk<br>'
    };
  },
  mounted(){
    this.axios.get('http://localhost:3000/v1/common/get').then(res => {
        console.log(res)
        this.data = res.data
        let aa = res.data.data[0].c_details
        console.log(aa.split('$$'),"AA")
        let a =document.getElementById('a')
        a.innerHTML = c
    })
  },
  methods: {
    handleChange(val) {
      console.log(val);
    },
  },
};
</script>
<style>
body{
  background-color: #f0f1f2;
}


</style>
<style>
.common{
  width: 1200px;
  margin: 0 auto;
}
.el-tabs__nav-scroll{
  width: 288px;

}
 .el-tabs--left .el-tabs__item.is-left{
    text-align: left;
    font-size: 16px;
    padding: 12px 24px;
  }
  .el-tabs__item:hover{
    color: rgba(0,0,0,.85);
  }
  .el-tabs__item.is-active{
    color: rgba(0,0,0,.85);
  }
  .el-tabs__nav-scroll{
    background-color: #fff;
  }
  .el-tabs__content{
    background-color: #fff;
    padding: 48px 48px 56px;
  }
$--color-primary: teal;
</style>