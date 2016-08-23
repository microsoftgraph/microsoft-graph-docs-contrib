# invitation resource type

Represents an invited users' additonal message object.

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|ccRecipients|[Recipients](recipients.md)|Additional recipients the invitation message should be sent to.|
|customizedMessageBody|String|Customized message body you want to send if you don't want the default message.|
|messageLanguage|String|The language you want to send the default message. If the customizedMessageBody is specified we just send that. This will ignored.|


### JSON representation

Here is a JSON representation of the resource

```json
{
  "ccRecipients":[{"@odata.type": "microsoft.graph.Recipients"}],
  "customizedMessageBody": "string",
  "messageLanguage": "string"
}```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2016-22-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "invitedUserMessageInfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->