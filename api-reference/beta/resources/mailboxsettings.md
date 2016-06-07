# mailboxSettings resource type

Settings for the primary mailbox of the signed-in user.


### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|automaticRepliesSetting|[automaticRepliesSetting](automaticrepliessetting.md)|Configuration settings to automatically notify the sender of an incoming email with a message from the signed-in user.|
|timeZone|string|The default time zone for the user's mailbox.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.mailboxSettings"
}-->

```json
{
  "automaticRepliesSetting": {"@odata.type": "microsoft.graph.automaticRepliesSetting"},
  "timeZone": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "mailboxSettings resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->