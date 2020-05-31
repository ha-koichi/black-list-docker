<template>
  <div>
    <div class="field">
      <label class="label">社名</label>
      <div class="control">
        <input
          class="input"
          type="text"
          placeholder="社名を入力してください"
          v-model="company.name"
        />
      </div>
    </div>

    <div class="field">
      <label class="label">業種</label>
      <div class="control">
        <div class="select">
          <select v-model="company.industry">
            <option v-for="(industry, key) in industries" :key="key">
              {{ industry }}
            </option>
          </select>
        </div>
      </div>
    </div>
    <div class="field">
      <label class="label">所在地</label>
      <div class="control">
        <input
          class="input"
          type="text"
          placeholder="所在地を入力してください"
          v-model="company.location"
        />
      </div>
    </div>
    <div class="field">
      <label class="label">HP</label>
      <div class="control">
        <input
          class="input"
          type="text"
          placeholder="HPのURLを入力してください"
          v-model="company.url"
        />
      </div>
    </div>
    <div class="field">
      <label class="label">代表者</label>
      <div class="control">
        <input
          class="input"
          type="text"
          placeholder="代表者の氏名を入力してください"
          v-model="company.employer"
        />
      </div>
    </div>
    <button
      class="button is-outlined"
      type="button"
      @click="submit"
    >
      登録
    </button>
  </div>
</template>

<script>
import firebase from '@/plugins/firebase'

export default {
  layout: 'common',
  data() {
    return {
      company: {
        name: '',
        industry: '',
        location: '',
        url: '',
        employer: ''
      },
      industries: [
        '農業・林業',
        '漁業',
        '鉱業・採石業・砂利採取業',
        '建設業',
        '製造業',
        '電気・ガス・熱供給・水道業',
        '情報通信業',
        '運輸業、郵便業',
        '卸売業、小売業',
        '金融業、保険業',
        '不動産業、物品賃貸業',
        '学術研究・専門・技術サービス業',
        '宿泊業・飲食サービス業',
        '生活関連サービス業・娯楽業',
        '教育、学習支援業',
        '医療、福祉',
        '複合サービス事業',
        'サービス業（他に分類されないもの）',
        '公務（他に分類されるものを除く）',
        '分類不能の産業'
      ]
    }
  },
  methods: {
    submit () {
      const db = firebase.firestore()
      let dbCompany = db.collection('companies')
      dbCompany
        .add({
          name: this.company.name,
          industry: this.company.industry,
          location: this.company.location,
          url: this.company.url,
          employer: this.company.employer,
        })
        .then(ref => {
          console.log('Add ID: ', ref.id)
        })
    }
  }
}
</script>
