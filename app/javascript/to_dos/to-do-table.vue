<template>
  <el-table
    :data="toDos"
    style="width: 100%"
    @cell-dbclick="showInput">
    <el-table-column
      prop="finished">
      <template v-slot="scope">
        <el-checkbox
          v-model="scope.row.finished"
          @change="$emit('update', scope.row.id, scope.row.finished)"></el-checkbox>
      </template>
    </el-table-column>
    <el-table-column
     prop="title">
     <template v-slot="scope">
       <div>{{ scope.row.title }}</div>
       <el-input
         class="hidden"
         v-model="scope.row.title"></el-input>
     </template>
    </el-table-column>
    <el-table-column
      prop="expired_at">
    </el-table-column>
    <el-table-column
      width="120">
       <template v-slot="scope">
        <el-button
          @click="$emit('destroy', scope.row.id)"
          type="danger"
          icon="el-icon-delete"
          circle></el-button>
      </template>
    </el-table-column>
  </el-table>
</template>

<script>

  export default {

      props: ["toDos"],

      methods:{
        showInput(row, column, cell, event) {
        let children = cell.firstElementChild.children
        children[0].classList.add('hidden')
        children[1].classList.remove('hidden')

        let input = children[1].firstElementChild
        input.focus()
      }
      }
  }

</script>

<style scoped>
.hidden{
  display: none;
}
</style>