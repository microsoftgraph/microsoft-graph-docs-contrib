# windowsDeviceType resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains properties for Windows device type.
## Properties
|Property|Type|Description|
|---|---|---|
|desktop|Boolean|Whether or not the Desktop Windows device type is supported.|
|mobile|Boolean|Whether or not the Mobile Windows device type is supported.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsDeviceType"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.windowsDeviceType",
  "desktop": true,
  "mobile": true
}
```



