---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Education

$params = @{
	distributeForStudentWork = $true
	resource = @{
		"@odata.type" = "microsoft.graph.educationSpeakerProgressResource"
		displayName = "speakerProgressTestResource"
		recordingTimeLimitInMinutes = 
		showRehearsalReportToStudentBeforeMediaUpload = $true
		maxRecordingAttempts = 
		isVideoRequired = $true
		isAiFeedbackEnabled = $true
		presentationTitle = "speakerProgressTestResource"
		spokenLanguageLocale = "en-US"
		speakerCoachSettings = @{
			deliverySettings = @{
				isPronunciationEnabled = $true
			}
		}
		aiFeedbackCriteria = @{
			speechType = "informative"
			aiFeedbackSettings = @{
				deliverySettings = @{
					isStyleEnabled = $true
				}
			}
		}
	}
}

New-MgEducationClassAssignmentResource -EducationClassId $educationClassId -EducationAssignmentId $educationAssignmentId -BodyParameter $params

```