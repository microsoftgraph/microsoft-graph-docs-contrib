# Synchronization job

Synchronization job performs synchronization by periodically running in the background, polling for changes in one directory and pushing them to another directory. Synchronization job is always specific to a particular instance of an application in your tenant. As part of the synchronization job setup, generally you would need to give authorization to read/write objects in your target directory, and customize job's synchronization schema to suit your needs.

## JSON representation

```json
{
    "id": "String (identifier)",
    "metadata": [{"@odata.type": "microsoft.graph.metadataEntry"}],
    "schema": {"@odata.type": "microsoft.graph.synchronizationSchema"},
    "status": {"@odata.type": "microsoft.graph.synchronizationStatus"},
    "templateId": "String (identifier)",
}
```

## Properties

| Property      | Type      | Description    |
|:--------------|:----------|:---------------|
|id             |String                     |Unique synchronization job identifier|
|metadata       |metadataEntry collection   |Additional extension properties. Unless mentioned explicitly, metadata values should not be changed|
|schema         |[synchronizationSchema](synchronization_schema.md)     |Synchronization schema configured for the job|
|status         |[synchronizationStatus](synchronization_status.md)     |Status of the job, which includes when the job was last executed, current job state and errors|
|templateId     |String    |Identifier of the [synchronization template](synchronization_template.md) this job is based on|

## Methods

| Method        | Return Type               | Description                  |
|:--------------|:--------------------------|:-----------------------------|
|[List](../api/synchronization_jobs_get.md)             |[synchronizationJob](synchronization_job.md) collection  |List existing jobs for a given application instance (service principal)|
|[Get](../api/synchronization_job_get.md)              |[synchronizationJob](synchronization_job.md)   |Retrieve existing job and its properties|
|[Create](../api/synchronization_jobs_post.md)         |[synchronizationJob](synchronization_job.md)   |Create new job for a given application|
|[Start](../api/synchronization_job_start.md)          |None   |Start synchronization. If job is in paused state, it continues from the point where job was paused. If job is in quarantine, quarantine status is cleared|
|[Restart](../api/synchronization_job_restart.md)      |None   |Force job to start from scratch and re-process all the objects in the directory|
|[Pause](../api/synchronization_job_pause.md)          |None   |Temporarily stop synchronizaion. All the progress including job state is persisted, and upon [Start](../api/synchronization_job_start.md) call job execution will continue from where it left off|
|[Delete](../api/synchronization_job_delete.md)        |None   |Stop synchronization, and permanently delete all the state associated with the job|
|[Get schema](../api/synchronization_schema_get.md)    |[synchronizationSchema](synchronization_schema.md)   |Retreive job's effective synchronization schema|
|[Put schema](../api/synchronization_schema_put.md)    |None   |Updates job's synchronization schema |

## JSON Example

```json
{
    "id": "{jobId}",
    "templateId": "BoxOutDelta",
    "schedule": {
        "expiration": null,
        "interval": "PT40M",
        "state": "Active"
    },
    "status": {
        "countSuccessiveCompleteFailures": 0,
        "escrowsPruned": false,
        "synchronizedEntryCountByType": [],
        "code": "Quarantine",
        "lastExecution": {
            "activityIdentifier": "703dd82f-faa0-4dbd-abdc-48f620ed7ab4",
            "countEntitled": 0,
            "countEntitledForProvisioning": 0,
            "countEscrowed": 0,
            "countEscrowedRaw": 0,
            "countExported": 0,
            "countExports": 0,
            "countImported": 0,
            "countImportedDeltas": 0,
            "countImportedReferenceDeltas": 0,
            "state": "Failed",
            "error": {
                "code": "BoxInsufficientPermissions",
                "message": "Authorization with Box is not valid. Please re-authorize access to Box",
                "tenantActionable": true
            },
            "timeBegan": "2017-07-19T14:55:58.5434447Z",
            "timeEnded": "2017-07-19T14:55:58.5570274Z"
        },
        "lastSuccessfulExecution": null,
        "lastSuccessfulExecutionWithExports": null,
        "steadyStateFirstAchievedTime": "0001-01-01T00:00:00Z",
        "steadyStateLastAchievedTime": "0001-01-01T00:00:00Z",
        "quarantine": {
            "currentBegan": "2017-07-19T12:35:27.0869139Z",
            "nextAttempt": "0001-01-01T00:00:00Z",
            "reason": "EncounteredQuarantineException",
            "seriesBegan": "2017-07-19T06:56:58.2464011Z",
            "seriesCount": 6
        }
    }
}
```