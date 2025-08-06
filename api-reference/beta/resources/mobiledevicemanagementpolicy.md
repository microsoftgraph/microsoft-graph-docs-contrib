## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/mobiledevicemanagementpolicies-list.md)|[mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md) collection|Get a list of the [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md) objects and their properties for mobile device management applications.|
|[Get](../api/mobiledevicemanagementpolicies-get.md)|[mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md)|Read the properties and relationships of a [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md) object for a mobile device management application.|
|[Update](../api/mobiledevicemanagementpolicies-update.md)|None|Update the properties of a [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md) object for a mobile device management application.|
|[List included groups](../api/mobiledevicemanagementpolicies-list-includedgroups.md)|[group](../resources/group.md) collection|List included groups for a [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md) object for a mobile device management application.|
|[Add group to policy](../api/mobiledevicemanagementpolicies-post-includedgroups.md)|None|Add a group to the [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md) object for a mobile device management application.|
|[Delete group from policy](../api/mobiledevicemanagementpolicies-delete-includedgroups.md)|None|Delete a group from the [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md) object for a mobile device management application.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|appliesTo|policyScope|Indicates the user scope of the mobility management policy. Possible values are: `none`, `all`, `selected`.|
|isMdmEnrollmentDuringRegistrationDisabled|Boolean|Determines whether to disable MDM enrollment prompts during device registration for users in scope of the policy|
|complianceUrl|String|Compliance URL of the mobility management application.|
|description|String|Description of the mobility management application.|
|discoveryUrl|String|Discovery URL of the mobility management application.|
|displayName|String|Display name of the mobility management application.|
|id|String|Object Id of the mobility management application.|
|isValid|Boolean|Whether policy is valid. Invalid policies may not be updated and should be deleted.|
|termsOfUseUrl|String|Terms of Use URL of the mobility management application.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|includedGroups|[group](../resources/group.md) collection|Microsoft Entra groups under the scope of the mobility management application if appliesTo is `selected`|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mobilityManagementPolicy",
  "openType": false
}
-->

``` json
{
  "id": "String (identifier)",
  "appliesTo": "String",
  "complianceUrl": "String",
  "description": "String",
  "discoveryUrl": "String",
  "displayName": "String",
  "isValid": "Boolean",
  "termsOfUseUrl": "String",
  "isMdmEnrollmentDuringRegistrationDisabled" : "Boolean"
}
```

<!-- uuid: 5c98f801-d1c4-44eb-ac11-f72b6754deda
2020-03-23T22:34:45.203Z -->
<!-- {
  "type": "#page.annotation",
  "description": "mobilityManagementPolicy resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}
-->
