<template>
  <div v-if="data">
    <template>
      <el-tabs :tab-position="tabPosition" style="height: 2000px">
        <el-tab-pane :label="item.c_name" class="pane" v-for="item in data.data" :key="item.c_id">
          <el-collapse  @change="handleChange">
            <el-collapse-item :title="item.c_title">
              <div>
                {{dd}}
              </div>
            </el-collapse-item>
            
         

          </el-collapse>
        </el-tab-pane>
      </el-tabs>
    </template>
  </div>
</template>
    </div>
</template>
<script>
export default {
  data() {
    return {
      tabPosition: "left",
      data:'',
      dd:''
    };
  },
  mounted(){
    this.axios.get('http://localhost:3000/v1/common/get').then(res => {
        console.log(res)
        // this.data = res.data
        
        let aa = res.data.data[0].c_title.split()
        console.log(aa,"AA")
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

</style>
<style lang="scss">
</style>