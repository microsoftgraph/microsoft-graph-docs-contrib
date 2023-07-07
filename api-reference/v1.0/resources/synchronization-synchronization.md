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

Represents the capability for Azure Active Directory (Azure AD) identity synchronization through the Microsoft Graph API. Identity synchronization (also called *provisioning*) allows you to automate the provisioning (creation, maintenance) and de-provisioning (removal) of user identities and roles from Azure AD to supported cloud applications. For more information, see [How Application Provisioning works in Azure Active Directory](/azure/active-directory/app-provisioning/how-provisioning-works)

## Methods


|Method|Return type|Description|
|:---|:---|:---|
|[acquireAccessToken](../api/synchronization-synchronization-acquireaccesstoken.md)|None| Acquire an OAuth Access token to authorize the Azure AD provisioning service to provision users into an application. |
|[Add secrets](../api/synchronization-serviceprincipal-put-synchronization.md)|None| Provide credentials for establishing connectivity with the target system. |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String| Identifier. Inherited from [entity](entity.md).|
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
  "@odata.type": "microsoft.graph.synchronization",
  "keyProperty": "id",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.synchronization",
  "secrets": [
    {
      "@odata.type": "microsoft.graph.synchronizationSecretKeyStringValuePair"
    }
  ]
}
```

