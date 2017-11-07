# yammerDeviceUsageUserDetail resource type

## Properties

| Property          | Type    |
| :---------------- | :------ |
| reportRefreshDate | Date    |
| userPrincipalName | String  |
| displayName       | String  |
| userState         | String  |
| stateChangeDate   | Date    |
| lastActivityDate  | Date    |
| web               | Boolean |
| windowsPhone      | Boolean |
| androidPhone      | Boolean |
| iPhone            | Boolean |
| iPad              | Boolean |
| other             | Boolean |
| reportPeriod      | String  |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.yammerDeviceUsageUserDetail"
} -->

```http
{
  "reportRefreshDate": "Date", 
  "userPrincipalName": "String", 
  "displayName": "String", 
  "userState": "String", 
  "stateChangeDate": "Date", 
  "lastActivityDate": "Date", 
  "web": true, 
  "windowsPhone": true, 
  "androidPhone": true, 
  "iPhone": true, 
  "iPad": true, 
  "other": true, 
  "reportPeriod": "String"
}
```
