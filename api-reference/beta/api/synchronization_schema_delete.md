# Delete synchronization schema

Deletes customized  schema, effectively resetting the schema to the default configured by application developer. If the schema is deleted in the context of the template, it resets the schema to default one associated with the template's `factoryTag`

## Request

```http
DELETE /servicePrincipals/{id}/synchronization/jobs/{jobId}/schema
DELETE /applications/{id}/synchronization/templates/{templateId}/schema
```

## Response

If successful, returns `201 No Content` response.

## Example

### Sample request

```http
DELETE https://graph.microsoft.com/beta/servicePrincipals/{id}/synchronization/jobs/{jobId}/schema
```

### Sample response

```http
HTTP/1.1 201 No Content
```
