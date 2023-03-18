---
title: "synchronization resource type"
description: "Represents the capability for Azure Active Directory (Azure AD) identity synchronization through the Microsoft Graph API."
author: "ArvindHarinder1"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: resourcePageType
---

# synchronization resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the capability for Azure Active Directory (Azure AD) identity synchronization through the Microsoft Graph API. Identity synchronization (also called *provisioning*) allows you to automate the provisioning (creation, maintenance) and de-provisioning (removal) of user identities and roles from Azure AD to supported cloud applications. For more information, see [How Application Provisioning works in Azure Active Directory](/azure/active-directory/app-provisioning/how-provisioning-works)

## Methods


|Method|Return type|Description|
|:---|:---|:---|
|[acquireAccessToken](../api/synchronization-synchronization-acquireaccesstoken.md)|None| Acquire an OAuth Access token to authorize the Azure AD provisioning service to provision users into an application. |
|[Add secrets](../api/synchronization-serviceprincipal-put-synchronization.md)|None| Provide credentials for establishing connectivity with the target system. |

<!--
|Method|Return type|Description|
|:---|:---|:---|
|[List synchronizations](../api/synchronization-synchronization-list.md)|[synchronization](../resources/synchronization-synchronization.md) collection|Get a list of the [synchronization](../resources/synchronization-synchronization.md) objects and their properties.|
|[Create synchronization](../api/synchronization-serviceprincipal-post-synchronization.md)|[synchronization](../resources/synchronization-synchronization.md)|Create a new [synchronization](../resources/synchronization-synchronization.md) object.|
|[Get synchronization](../api/synchronization-synchronization-get.md)|[synchronization](../resources/synchronization-synchronization.md)|Read the properties and relationships of a [synchronization](../resources/synchronization-synchronization.md) object.|
|[Update synchronization](../api/synchronization-synchronization-update.md)|[synchronization](../resources/synchronization-synchronization.md)|Update the properties of a [synchronization](../resources/synchronization-synchronization.md) object.|
|[Delete synchronization](../api/synchronization-synchronization-delete.md)|None|Deletes a [synchronization](../resources/synchronization-synchronization.md) object.|
|[Ping](../api/synchronization-synchronization-ping.md)|String|**TODO: Add Description**|
|[acquireAccessToken](../api/synchronization-synchronization-acquireaccesstoken.md)|None|**TODO: Add Description**|
|[List jobs](../api/synchronization-synchronization-list-jobs.md)|[synchronizationJob](../resources/synchronization-synchronizationjob.md) collection|Get the synchronizationJob resources from the jobs navigation property.|
|[Create synchronizationJob](../api/synchronization-synchronization-post-jobs.md)|[synchronizationJob](../resources/synchronization-synchronizationjob.md)|Create a new synchronizationJob object.|
|[List templates](../api/synchronization-synchronization-list-templates.md)|[synchronizationTemplate](../resources/synchronization-synchronizationtemplate.md) collection|Get the synchronizationTemplate resources from the templates navigation property.|
|[Create synchronizationTemplate](../api/synchronization-synchronization-post-templates.md)|[synchronizationTemplate](../resources/synchronization-synchronizationtemplate.md)|Create a new synchronizationTemplate object.|
-->

## Properties
|Property|Type|Description|
|:---|:---|:---|
|secrets|[synchronizationSecretKeyStringValuePair](synchronization-synchronizationsecretkeystringvaluepair.md) collection| Represents a collection of credentials to access provisioned cloud applications.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|jobs|[synchronizationJob](../resources/synchronization-synchronizationjob.md) collection| Performs synchronization by periodically running in the background, polling for changes in one directory, and pushing them to another directory.|
|templates|[synchronizationTemplate](../resources/synchronization-synchronizationtemplate.md) collection| Pre-configured synchronization settings for a particular application.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.synchronization",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.synchronization",
  "version": "String",
  "secrets": [
    {
      "@odata.type": "microsoft.graph.synchronizationSecretKeyStringValuePair"
    }
  ]
}
```

