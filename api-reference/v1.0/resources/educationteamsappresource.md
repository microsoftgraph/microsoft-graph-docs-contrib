---
title: "educationTeamsAppResource resource type"
description: "Corresponds to an installed Microsoft Teams app."
author: "AshwaniBansal1"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: resourcePageType
---

# educationTeamsAppResource resource type

Namespace: microsoft.graph

Corresponds to an [installed Microsoft Teams app](teamsappinstallation.md). This allows education service users to create and share assignments with embedded Teams applications, such as YouTube or Flip.

For information about using Flip for education on Microsoft Teams, see [introduction to Flip](/training/educator-center/product-guides/flip).

Inherits from [educationResource](educationresource.md).

## Properties

| Property                | Type                          | Description                                                                                    |
|:------------------------|:------------------------------|:-----------------------------------------------------------------------------------------------|
| appIconWebUrl           | String                        | URL that points to the icon of the app.                                                        |
| appId                   | String                        | Teams app ID of the application.                                                               |
| createdBy               | [identitySet](identityset.md) | Identity of the user who created this resource. Inherited from **educationResource**.          |
| createdDateTime         | DateTimeOffset                | The date and time when the resource was added. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from **educationResource**. |
| displayName             | String                        | The display name of the resource. Inherited from **educationResource**.                        |
| lastModifiedBy          | [identitySet](identityset.md) | Identity of the user who last modified the resource. Inherited from **educationResource**.     |
| lastModifiedDateTime    | DateTimeOffset                | The date and time when the resource was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from **educationResource**. |
| teamsEmbeddedContentUrl | String                        | URL for the app resource that will be opened by Teams.                                         |
| webUrl                  | String                        | URL for the app resource that can be opened in the browser.                                    |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationTeamsAppResource"
}-->

```json
{
  "appIconWebUrl": "String",
  "appId": "String",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "teamsEmbeddedContentUrl": "String",
  "webUrl": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2022-12-01 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "educationTeamsAppResource resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
