<template>
  <div>
    <template>
      <el-tabs :tab-position="tabPosition" style="height: 2000px">
        <el-tab-pane label="用户管理" class="pane">
          <el-collapse  @change="handleChange">
            <el-collapse-item title="一致性 Consistency">
              <div>
                与现实生活一致：与现实生活的流程、逻辑保持一致，遵循用户习惯的语言和概念；
              </div>
              <div>
                在界面中一致：所有的元素和结构需保持一致，比如：设计样式、图标和文本、元素的位置等。
              </div>
            </el-collapse-item>
            
         

          </el-collapse>
        </el-tab-pane>
        <el-tab-pane label="配置管理">配置管理</el-tab-pane>
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
    };
  },
  mounted(){
    this.axios.get('http://localhost:3000/v1/common/get').then(res => {
        console.log(res)
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