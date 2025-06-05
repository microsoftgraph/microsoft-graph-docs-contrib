---
title: "configurationApplication resource type"
description: "Represents the information and properties of a configurationApplication object. "
author: "swatyario"
ms.date: 04/10/2025
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
doc_type: resourcePageType
---

# configurationApplication resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the information and properties of a [configurationApplication](../resources/configurationapplication.md) object. The **configurationApplication** resource ensures that unified tenant configuration management (UTCM) can read and download the application certificate from the customer key vault that helps UTCM during the background job flow to get an access token for the service principal. The **configurationApplication** helps UTCM to:

* Read the certificate using the key-vault URI and certificate name.
* Use that certificate to get a token from Microsoft Entra for Exchange and other workload scopes, depending on the resources the admin wants to monitor or take a snapshot.
* Ensure that the certificate from the key vault is associated with the correct application in Azure.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/configurationmanagement-list-configurationapplications.md)|[configurationApplication](../resources/configurationapplication.md) collection|Get a list of the [configurationApplication](../resources/configurationapplication.md) objects and their properties.|
|[Create](../api/configurationmanagement-post-configurationapplications.md)|[configurationApplication](../resources/configurationapplication.md)|Create a new [configurationApplication](../resources/configurationapplication.md) object.|
|[Get](../api/configurationapplication-get.md)|[configurationApplication](../resources/configurationapplication.md)|Read the properties and relationships of a [configurationApplication](../resources/configurationapplication.md) object.|
|[Update](../api/configurationapplication-update.md)|[configurationApplication](../resources/configurationapplication.md)|Update the properties of a [configurationApplication](../resources/configurationapplication.md) object.|
|[Delete](../api/configurationapplication-delete.md)|None|Delete a [configurationApplication](../resources/configurationapplication.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appId|String|The app ID of the application created in the Azure portal.|
|clientCredentials|[clientCredentials](../resources/clientcredentials.md)| Includes the **keyVaultUri** and **certificateName** properties that the user must have obtained during the creation of the key vault.|
|createdBy|[identitySet](../resources/identityset.md)|The user who created the application onboarding request.|
|createdDateTime|DateTimeOffset|The date and time when the application onboarding request was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|description|String|User-friendly description of the **configurationApplication**.|
|displayName|String|User-friendly name given by the user during the creation the **configurationApplication**.|
|id|String|Globally unique identifier (GUID) of the application onboarding request. System-generated. Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The user who last modified the application.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the application onboarding request was last modified. If no modifications are made to the application, it's the same as **createdDateTime**. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|tenantId|String|Globally unique identifier (GUID) of the tenant for which the application onboarding request is created. Fetched automatically by the system.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.configurationApplication",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.configurationApplication",
  "appId": "String",
  "clientCredentials": {"@odata.type": "microsoft.graph.clientCredentials"},
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "lastModifiedBy": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "tenantId": "String"
}
```
