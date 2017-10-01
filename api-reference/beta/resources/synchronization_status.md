# Synchronization status

Current status of the synchronization job

## JSON representation

```json
{
    "countSuccessiveCompleteFailures": "Integer",
    "escrowsPruned": "Boolean",
    "synchronizedEntryCountByType": [],
    "code": "String",
    "lastExecution":{"@odata.type": "microsoft.graph.synchronizationJobExecution"},
    "lastSuccessfulExecution": {"@odata.type": "microsoft.graph.synchronizationJobExecution"},
    "lastSuccessfulExecutionWithExports": {"@odata.type": "microsoft.graph.synchronizationJobExecution"},
    "steadyStateFirstAchievedTime": "String",
    "steadyStateLastAchievedTime": "String",
    "quarantine": {"@odata.type": "microsoft.graph.synchronizationJobExecution"}
}
```

## Properties

| Property                              | Type      | Description    |
|:--------------------------------------|:----------|:---------------|
|countSuccessiveCompleteFailures        |Number         |Number of consecutive times this job failed|
|escrowsPruned                          |Boolean        |`true` if the job's escrows (object-level errors) were pruned during initial synchronization. Escrows can be pruned if during initial synchronization we reach the threshold of errors which would normally put the job in quarantine. Instead of going into quarantine, synchronization opts out to clear job's errors and continue until the initial synchronization is completed. Once initial synchronization is completed, job will be paused and wait for customer's manual intervention to clean up the errors  |
|synchronizedEntryCountByType           |KeyValuePair<string,integer> collection     |Count of synchronized objects, listed by object type|
|code                                   |[statusCode](synchronization_statusCode.md)  |Job's current status code|
|lastExecution                          |[synchronizationJobExecution](synchronization_status.md#synchronizationJobExecution)   |Details of the last execution of the job|
|lastSuccessfulExecution       |[synchronizationJobExecution](synchronization_status.md#synchronizationJobExecution)        |Details of the last execution of this job, which didn't have any errors|
|lastSuccessfulExecutionWithExports     |[synchronizationJobExecution](synchronization_status.md#synchronizationJobExecution)        |Details of the last execution of the job, which exported objects into the target directory|
|steadyStateFirstAchievedTime           |DateTimeOffset        |Time when steady state (no more changes to process) was first achieved|
|steadyStateLastAchievedTime            |DateTimeOffset        |Time when steady state (no more changes to process) was last achieved|
|quarantine     |[synchronizationQuarantine](synchronization_status.md#synchronizationQuarantine)        |If job is in quarantine, quarantine details|


### synchronizationJobExecution

Summarizes the results of the particular execution of the synchronization job

| Property          | Type      | Description    |
|:------------------|:----------|:---------------|
|activityIdentifier             |String     | Identifier of the job execution|
|countEntitled                  |Integer    | Count of processed entries which were assigned for this application|
|countEntitledForProvisioning   |Integer    | Count of processed entries which were assigned for provisioning|
|countEscrowed                  |Integer    | Count of entries which were escrowed (errors)|
|countEscrowedRaw               |Integer    | Count of entries which were escrowed, including system-generated escrows |
|countExported                  |Integer    | Count of exported entries|
|countExports                   |Integer    | Count of entries which were expected to be exported|
|countImported                  |Integer    | Count of imported entries|
|countImportedDeltas            |Integer    | Count of imported delta-changes|
|countImportedReferenceDeltas   |Integer    | Count of imported delta-changes pertaining to reference changes|
|state                          |String    | Code summarizing the result of this execution|
|error                          |synchronizationError    | If an error was encountered, contains an error object with the following properties: '{ "code": "String", "message": "String",  "tenantActionable": "Boolean" }`|
|timeBegan                      |DateTimeOffset    | Time when this job execution began |
|timeEnded                      |DateTimeOffset    | Time when this job execution ended |


### synchronizationQuarantine

Provides information about quarantine state

| Property      | Type              | Description    |
|:--------------|:------------------|:---------------|
|currentBegan   |String (DateTime)  | Date and time when quarantine was last evaluated and imposed|
|nextAttempt    |String (DateTime)  | Date and time when next attempt to re-evaluate the quarantine will be made|
|reason         |String             | Code signifying why the quarantine was imposed|
|seriesBegan    |String (DateTime)  | Date and time when the quarantine was first imposed in this series (Series starts when quarantine is first imposed, and is reset as soon as quarantine is lifted)|
|seriesCount    |Integer            | Number of times in this series quarantine was re-evaluated and left in effect ((Series starts when quarantine is first imposed, and is reset as soon as quarantine is lifted) |

## JSON Example

```json
{
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
```