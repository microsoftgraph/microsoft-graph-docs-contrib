# deviceComplianceActionItem resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Scheduled Action Configuration
## Methods
|Method|Return Type|Description|
|---|---|---|
|[List deviceComplianceActionItems](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_deviceconfig_devicecomplianceactionitem_list.md)|[deviceComplianceActionItem](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_devicecomplianceactionitem.md) collection|List properties and relationships of the [deviceComplianceActionItem](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_devicecomplianceactionitem.md) objects.|
|[Get deviceComplianceActionItem](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_deviceconfig_devicecomplianceactionitem_get.md)|[deviceComplianceActionItem](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_devicecomplianceactionitem.md)|Read properties and relationships of the [deviceComplianceActionItem](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_devicecomplianceactionitem.md) object.|
|[Create deviceComplianceActionItem](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_deviceconfig_devicecomplianceactionitem_create.md)|[deviceComplianceActionItem](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_devicecomplianceactionitem.md)|Create a new [deviceComplianceActionItem](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_devicecomplianceactionitem.md) object.|
|[Delete deviceComplianceActionItem](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_deviceconfig_devicecomplianceactionitem_delete.md)|None|Deletes a [deviceComplianceActionItem](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_devicecomplianceactionitem.md).|
|[Update deviceComplianceActionItem](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_deviceconfig_devicecomplianceactionitem_update.md)|[deviceComplianceActionItem](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_devicecomplianceactionitem.md)|Update the properties of a [deviceComplianceActionItem](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_devicecomplianceactionitem.md) object.|
|[Get notificationMessageTemplate](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_deviceconfig_notificationmessagetemplate_get.md)|[notificationMessageTemplate](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_notificationmessagetemplate.md)|Read properties and relationships of the [notificationMessageTemplate](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_notificationmessagetemplate.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|
|gracePeriodHours|Int32|Number of hours to wait till the action will be enforced.|
|actionType|String|What action to take Possible values are: `noAction`, `notification`, `block`, `retire`, `wipe`, `removeResourceAccessProfiles`.|
|notificationTemplateId|String|What notification Message template to use|
|notificationMessageCCList|String collection|A list of group IDs to speicify who to CC this notification message to.|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|notificationMessageTemplate|[notificationMessageTemplate](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_notificationmessagetemplate.md)|Notification message template.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceComplianceActionItem"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceComplianceActionItem",
  "id": "String (identifier)",
  "gracePeriodHours": 1024,
  "actionType": "String",
  "notificationTemplateId": "String",
  "notificationMessageCCList": [
    "String"
  ]
}
```



