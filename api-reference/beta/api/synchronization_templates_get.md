## List existing synchronization templates

List templates associated with a given application or service principal

### Request

```http
GET servicePrincipals/{id}/synchronization/templates
GET applications/{id}/synchronization/templates
```

### Response

If successful, returns `200 OK` response and collection of [synchronizationTemplate](../resources/synchronization_template.md) objects in the response body.

### Example

Sample request

```http
GET https://graph.microsoft.com/testSynchronization/servicePrincipals/{id}/synchronization/templates
```

Sample response

```javascript
HTTP/1.1 200 OK
{
    "value": [
        {
            "id": "Slack",
            "factoryTag": "CustomSCIM",
            "schema": {
                    "directories": [...],
                    "synchronizationRules": [...]
                    }
        }
    ]
}
```