# agreementFile resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents an Azure AD terms of use agreement file. It contains metadata about the file.

<!--
## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get agreementFile](../api/agreementfile_get.md) | [agreementFile](agreementfile.md) | Read properties and relationships of agreementFile object. |
| [Update](../api/agreementfile_update.md) | [agreementFile](agreementfile.md) | Update agreementFile object. |
| [Delete](../api/agreementfile_delete.md) | None | Delete agreementFile object. |
-->

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|fileData|[agreementFileData](agreementfiledata.md)|The blob representing the PDF document. Read-only.|
|fileName|String|Name of the agreement file (e.g. TOU.pdf). Read-only.|
|id|String|Read-only.|
|isDefault|Boolean|Whether this is the default agreement file if none of the culture matches the client preference. If none of the file is marked as default, the first one will be treated as default. Read-only.|
|language|String|Culture of the agreement file (e.g. en, fr, es, etc). Read-only.|

## Relationships
None


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.agreementFile"
}-->

```json
{
  "fileData": {"@odata.type": "microsoft.graph.agreementFileData"},
  "fileName": "String",
  "id": "String (identifier)",
  "isDefault": true,
  "language": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "agreementFile resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->