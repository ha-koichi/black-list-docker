<template>
  <div>
    <table class="table is-hoverable is-fullwidth">
      <thead>
        <tr>
          <th>
            <abbr title="Position">Pos</abbr>
          </th>
          <th>Team</th>
        </tr>
      </thead>
      <tfoot>
        <th>
          <abbr title="Position">Pos</abbr>
        </th>
        <th>Team</th>
      </tfoot>
      <tbody>
        <tr>
          <th>2</th>
          <td>
            <a
              href="https://en.wikipedia.org/wiki/Arsenal_F.C."
              title="Arsenal F.C."
            >
              Arsenal
            </a>
          </td>
        </tr>
        <tr>
          <th>2</th>
          <td>
            <a
              href="https://en.wikipedia.org/wiki/Arsenal_F.C."
              title="Arsenal F.C."
            >
              Arsenal
            </a>
          </td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
import firebase from '@/plugins/firebase'

export default {
  layout: 'common',
  asyncData (context) {
    const db = firebase.firestore()
    let companiesRef = db.collection('companies');
    let allCompanies = companiesRef
      .get()
      .then(snapshot => {
        snapshot.forEach(doc => {
          console.log(doc.id, '=>', doc.data());
        });
      })
  }
}
</script>
