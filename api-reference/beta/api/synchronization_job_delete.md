# Delete synchronization job

Stops the synchronization job, and permanently deletes all the state associated with it. Synchronizaed accounts remain as-is.

## Request

```http
DELETE /servicePrincipals/{id}/synchronization/jobs/{jobId}/
```

## Request body

No content expected in the request body.

## Response

If successful, returns `204 No Content` response.

## Example

### Sample request

```http
DELETE https://graph.microsoft.com/beta/servicePrincipals/{id}/synchronization/jobs/{jobId}/
```

### Sample response

```http
HTTP/1.1 204 No Content
```
