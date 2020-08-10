---
title: "agreementAcceptance resource type"
description: "Represents the current status of a user within scope of a company's customizable terms of use powered by Azure Active Directory (Azure AD)."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "microsoft-identity-platform"
author: raprakasMSFT
---

# agreementAcceptance resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the current status of a user within scope of a company's customizable terms of use powered by Azure Active Directory (Azure AD).

<!--
## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get agreementAcceptance](../api/agreementacceptance-get.md) | [agreementAcceptance](agreementacceptance.md) | Read properties and relationships of agreementAcceptance object. |
| [Update](../api/agreementacceptance-update.md) | [agreementAcceptance](agreementacceptance.md) | Update an **agreementAcceptance** object. |
| [Delete](../api/agreementacceptance-delete.md) | None | Delete an **agreementAcceptance** object. |
-->

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|agreementFileId|String|ID of the agreement file accepted by the user.|
|agreementId|String|ID of the agreement.|
|deviceDisplayName|String|The display name of the device used for accepting the agreement.|
|deviceId|String|The unique identifier of the device used for accepting the agreement.|
|deviceOSType|String|The operating system used for accepting the agreement.|
|deviceOSVersion|String|The operating system version of the device used for accepting the agreement.	|
|expirationDateTime|DateTimeOffset|The expiration date time of the acceptance. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|id|String| Read-only.|
|recordedDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|state|string| Possible values are: `accepted`, `declined`.|
|userDisplayName|String|Display name of the user when the acceptance was recorded.|
|userEmail|String|Email of the user when the acceptance was recorded.|
|userId|String|ID of the user who accepted the agreement.|


## Relationships
None.


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.agreementAcceptance"
}-->

```json
{
      "id": "a161f00d-27b7-42e5-9230-ae0544249a8e_ba1505ac-64bb-40a3-934e-38aaee798cd8",
      "agreementId": "a161f00d-27b7-42e5-9230-ae0544249a8e",
      "userId": "ba1505ac-64bb-40a3-934e-38aaee798cd8",
      "deviceId": "00000000-0000-0000-0000-000000000000",
      "deviceDisplayName": "Sample display",
      "deviceOSType": "Sample OS 1",
      "deviceOSVersion": "1.1",
      "agreementFileId": "22c7a9b7-5e93-43e3-a33d-7158ee040b0d",
      "userDisplayName": "user 1",
      "userPrincipalName": "user_1@testlocal1.ccsctp.net",
      "userEmail": null,
      "recordedDateTime": "2020-05-13T16:32:11.6191167Z",
      "expirationDateTime": "2020-05-16T23:19:00Z",
      "state": "accepted"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "agreementAcceptance resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
