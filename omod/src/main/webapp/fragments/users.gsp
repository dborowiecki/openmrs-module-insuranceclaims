<table>
  <tr>
   <th>User Id</th>
   <th>Username</th>
  </tr>
  <% if (users) { %>
     <% users.each { %>
      <tr>
        <td>${ ui.format(it.userId) }</td>
        <td>${ ui.format(it.systemId) }</td>
      </tr>
    <% } %>
  <% } else { %>
  <tr>
    <td colspan="2">${ ui.message("general.none") }</td>
  </tr>
  <% } %>
</table>

<htmlform>

<p>  Date of encounter: <encounterDate  /> </p>

<p> Health center: <encounterLocation /> </p>

<p>Chest xray finding:  <obs conceptId="12" /> </p>

<p>Clinician's name:<encounterProvider role="Provider" /></p>

<p><submit /></p>

</htmlform>

${ ui.includeFragment("uicommons", "field/datetimepicker", [ id: 'startDate', label: 'START',
    formFieldName: 'startDate', useTime: '', ]) }