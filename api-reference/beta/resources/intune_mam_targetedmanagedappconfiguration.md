# targetedManagedAppConfiguration resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Configuration used to deliver a set of custom settings as-is to all users in the targeted security group

Inherits from [managedAppConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_mam_managedappconfiguration.md)

## Methods
|Method|Return Type|Description|
|---|---|---|
|[List targetedManagedAppConfigurations](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_mam_targetedmanagedappconfiguration_list.md)|[targetedManagedAppConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_mam_targetedmanagedappconfiguration.md) collection|List properties and relationships of the [targetedManagedAppConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_mam_targetedmanagedappconfiguration.md) objects.|
|[Get targetedManagedAppConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_mam_targetedmanagedappconfiguration_get.md)|[targetedManagedAppConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_mam_targetedmanagedappconfiguration.md)|Read properties and relationships of the [targetedManagedAppConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_mam_targetedmanagedappconfiguration.md) object.|
|[Create targetedManagedAppConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_mam_targetedmanagedappconfiguration_create.md)|[targetedManagedAppConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_mam_targetedmanagedappconfiguration.md)|Create a new [targetedManagedAppConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_mam_targetedmanagedappconfiguration.md) object.|
|[Delete targetedManagedAppConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_mam_targetedmanagedappconfiguration_delete.md)|None|Deletes a [targetedManagedAppConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_mam_targetedmanagedappconfiguration.md).|
|[Update targetedManagedAppConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_mam_targetedmanagedappconfiguration_update.md)|[targetedManagedAppConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_mam_targetedmanagedappconfiguration.md)|Update the properties of a [targetedManagedAppConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_mam_targetedmanagedappconfiguration.md) object.|
|[updateMobileAppIdentifierDeployments action](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_mam_targetedmanagedappconfiguration_updatemobileappidentifierdeployments.md)|None|Not yet documented|
|[updateTargetedSecurityGroups action](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_mam_targetedmanagedappconfiguration_updatetargetedsecuritygroups.md)|None|Not yet documented|
|[List mobileAppIdentifierDeployments](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_mam_mobileappidentifierdeployment_list.md)|[mobileAppIdentifierDeployment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_mam_mobileappidentifierdeployment.md) collection|List properties and relationships of the [mobileAppIdentifierDeployment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_mam_mobileappidentifierdeployment.md) objects.|
|[Get managedAppPolicyDeploymentSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_mam_managedapppolicydeploymentsummary_get.md)|[managedAppPolicyDeploymentSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_mam_managedapppolicydeploymentsummary.md)|Read properties and relationships of the [managedAppPolicyDeploymentSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_mam_managedapppolicydeploymentsummary.md) object.|
|[List directoryObjects](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_mam_directoryobject_list.md)|[directoryObject](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_mam_directoryobject.md) collection|List properties and relationships of the [directoryObject](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_mam_directoryobject.md) objects.|

## Properties
|Property|Type|Description|
|---|---|---|
|displayName|String|Policy display name. Inherited from [managedAppPolicy](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_mam_managedapppolicy.md)|
|description|String|The policy's description. Inherited from [managedAppPolicy](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_mam_managedapppolicy.md)|
|createdDateTime|DateTimeOffset|The date and time the policy was created. Inherited from [managedAppPolicy](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_mam_managedapppolicy.md)|
|lastModifiedDateTime|DateTimeOffset|Last time the policy was modified. Inherited from [managedAppPolicy](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_mam_managedapppolicy.md)|
|id|String|Key of the entity. Inherited from [managedAppPolicy](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_mam_managedapppolicy.md)|
|version|String|Version of the entity. Inherited from [managedAppPolicy](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_mam_managedapppolicy.md)|
|customSettings|[keyValuePair](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_mam_keyvaluepair.md) collection|A set of string key and string value pairs to be sent to apps for users to whom the configuration is scoped, unalterned by this service Inherited from [managedAppConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_mam_managedappconfiguration.md)|
|deployedAppCount|Int32|Count of apps to which the current policy is deployed.|
|targetedSecurityGroupIds|String collection|List of security group IDs to which the configuration is deployed|
|targetedSecurityGroupsCount|Int32|Number of groups to which the configuration is deployed.|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|mobileAppIdentifierDeployments|[mobileAppIdentifierDeployment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_mam_mobileappidentifierdeployment.md) collection|List of apps to which the policy is deployed.|
|deploymentSummary|[managedAppPolicyDeploymentSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_mam_managedapppolicydeploymentsummary.md)|Navigation property to deployment summary of the configuration.|
|targetedSecurityGroups|[directoryObject](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_mam_directoryobject.md) collection|Navigation property to list of security groups to which the configuration is deployed.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.targetedManagedAppConfiguration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.targetedManagedAppConfiguration",
  "displayName": "String",
  "description": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "version": "String",
  "customSettings": [
    {
      "@odata.type": "microsoft.graph.keyValuePair",
      "name": "String",
      "value": "String"
    }
  ],
  "deployedAppCount": 1024,
  "targetedSecurityGroupIds": [
    "String"
  ],
  "targetedSecurityGroupsCount": 1024
}
```



