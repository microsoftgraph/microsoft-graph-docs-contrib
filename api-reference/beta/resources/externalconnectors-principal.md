---
title: "principal resource type"
description: "Represents a complex data type used to add people-related properties to items indexed by externalConnection."
ms.localizationpriority: medium
author: "bak"
ms.subservice: "search"
doc_type: "resourcePageType"
ms.date: 12/06/2025
---

# principal resource type

Namespace: microsoft.graph.externalConnectors

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a complex data type used to add people-related properties to items indexed by an [externalConnection](externalconnectors-externalconnection.md). You can also use the principalCollection data type when there's list of people.

## Properties

| Property       | Type   | Description                                        |
|:---------------|:-------|:---------------------------------------------------|
| externalName     | String | The name associated with the person in the external data source.|
| externalId | String | The ID associated with the person in the external data source. It could also be an email associated with the person on the external source. |
| entraDisplayName   | String | The name of the person as mentioned on Microsoft Entra. |
| entraId    | String |  The ID of the person as mentioned on Microsoft Entra.|
| email     | String |  The email of the person as mentioned on Microsoft Entra.|
| upn | String | The User Principal Name (UPN) of the person as mentioned on Azure Active directory or Microsoft Entra. |
| tenantId     | String | The ID of the tenant where the person belongs. Tenant ID is a unique GUID that identifies your organization’s Azure Active Directory (Entra ID) tenant. |

## Relationships

None.

## JSON representation

You can use the principal or principalCollection data types.

| Data type      | Description                                        |
|:---------------|:---------------------------------------------------|
| principal   | Use this datatype when the property has information about one person. Example: Assignee property for a JIRA ticket where there's only one assignee.|
| principalCollection  |  Use this datatype when the property refers to a list of people. Example: Contributors property for a GitHub PR where there can be multiple people.|

Using principal or principalCollection type properties instead of a string or string collection for people related properties while ingesting ExternalItems can provide better and more relevant results in Copilot Search or chat.  

The following JSON representation shows the resource type for principal data type. 
<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.externalConnectors.principal",
  "baseType": null
}-->

```json
{
  "externalName": "String",
  "externalId": "String",
  "entraDisplayName": "String",
  "entraId": "String",
  "email": "String",
  "upn": "String",
  "tenantId": "String"
}
```

The following JSON representation shows the resource type for principal collection data type. 
<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.externalConnectors.principal",
  "baseType": null
}-->

```json
{
  "principals": [
    {
      "externalName": "String",
      "externalId": "String",
      "entraDisplayName": "String",
      "entraId": "String",
      "email": "String",
      "upn": "String",
      "tenantId": "String"
    }
  ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Principal data type resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
