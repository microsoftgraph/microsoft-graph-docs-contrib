# skypeForBusinessDeviceUsageUserDetail resource type

## Properties

| Property          | Type    |
| :---------------- | :------ |
| reportRefreshDate | Date    |
| userPrincipalName | String  |
| lastActivityDate  | Date    |
| windows           | Boolean |
| windowsPhone      | Boolean |
| androidPhone      | Boolean |
| iPhone            | Boolean |
| iPad              | Boolean |
| reportPeriod      | String  |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.skypeForBusinessDeviceUsageUserDetail"
} -->

```http
{
  "reportRefreshDate": "Date", 
  "userPrincipalName": "String", 
  "lastActivityDate": "Date", 
  "windows": true, 
  "windowsPhone": true, 
  "androidPhone": true, 
  "iPhone": true, 
  "iPad": true, 
  "reportPeriod": "String"
}
```
