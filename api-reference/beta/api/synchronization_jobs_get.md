# List synchronization jobs

List existing jobs for a given application instance (service principal)

## Request

```http
GET /servicePrincipals/{id}/synchronization/jobs/
```

## Response

If successful, returns `200 OK` response with collection of [synchronizationJobs](../resources/synchronization_job.md) in the response body.

## Example

### Sample request

```http
GET https://graph.microsoft.com/beta/servicePrincipals/{id}/synchronization/jobs/
```

### Sample response

```http
HTTP/1.1 200 OK

{
    "value": [
        {
            "id": "{jobId}",
            "templateId": "BoxOutDelta",
            "schedule": {
                "expiration": null,
                "interval": "P10675199DT2H48M5.4775807S",
                "state": "Disabled"
            },
            "status": {
                "countSuccessiveCompleteFailures": 0,
                "escrowsPruned": false,
                "synchronizedEntryCountByType": [],
                "code": "Paused",
                "lastExecution": null,
                "lastSuccessfulExecution": null,
                "lastSuccessfulExecutionWithExports": null,
                "steadyStateFirstAchievedTime": "0001-01-01T00:00:00Z",
                "steadyStateLastAchievedTime": "0001-01-01T00:00:00Z",
                "quarantine": null,
            }
        }
    ]
}
```
