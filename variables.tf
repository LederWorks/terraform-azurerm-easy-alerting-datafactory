#### Subscription ####
variable "SubscriptionID" {
  description = "ID of the Subscription"
  type = any
  validation {
    condition = can(regex("\\b[0-9a-f]{8}\\b-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-\\b[0-9a-f]{12}\\b", var.SubscriptionID))
    error_message = "Must be a valid subscription id. Ex: 9e4e50cf-5a4a-4deb-a466-9086cd9e365b."
  }
}

#### Tags ####
variable "Tags" {
  description = "BYO Tags, preferrable from a local on your side :D"
  type = map(string)
}

#### Data Factory ####
variable "DataFactoryResourceGroupObject" {
  description = "DataFactory resource group"
  type = any
  default = null
}
variable "DataFactoryName" {
  description = "DataFactory name"
  type = any
  default = null
}

###############################################
################ Activity Runs ################
###############################################

####################################
#### AlertActivityRunsCancelled ####
####################################

variable "DataFactoryAlertActivityRunsCancelledCreated" {
  type    = bool
  default = false
}
variable "DataFactoryAlertActivityRunsCancelledEnabled" {
  type    = bool
  default = true
}
variable "DataFactoryAlertActivityRunsCancelledSeverity" {
  description = "The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3."
  type    = number
  default = 3
  validation {
      condition = (var.DataFactoryAlertActivityRunsCancelledSeverity >= 0 && var.DataFactoryAlertActivityRunsCancelledSeverity <= 4)
      error_message = "Value must be between 0-4. The lower the higher."
  }
}
variable "DataFactoryAlertActivityRunsCancelledFrequency" {
  description = "The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M."
  type    = string
  default = "PT1M"
  validation {
      condition = (var.DataFactoryAlertActivityRunsCancelledFrequency == "PT1M" || var.DataFactoryAlertActivityRunsCancelledFrequency == "PT5M" || var.DataFactoryAlertActivityRunsCancelledFrequency == "PT15M" || var.DataFactoryAlertActivityRunsCancelledFrequency == "PT30M" || var.DataFactoryAlertActivityRunsCancelledFrequency == "PT1H" )
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M and PT1H."
  }
}
variable "DataFactoryAlertActivityRunsCancelledWindow" {
  description = "The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency."
  type    = string
  default = null
  validation {
      condition = (var.DataFactoryAlertActivityRunsCancelledWindow == null || var.DataFactoryAlertActivityRunsCancelledWindow == "PT1M" || var.DataFactoryAlertActivityRunsCancelledWindow == "PT5M" || var.DataFactoryAlertActivityRunsCancelledWindow == "PT15M" || var.DataFactoryAlertActivityRunsCancelledWindow == "PT30M" || var.DataFactoryAlertActivityRunsCancelledWindow == "PT1H" || var.DataFactoryAlertActivityRunsCancelledWindow == "PT6H" || var.DataFactoryAlertActivityRunsCancelledWindow == "PT2H" || var.DataFactoryAlertActivityRunsCancelledWindow == "PT1D")
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D."
  }
}
variable "DataFactoryAlertActivityRunsCancelledAutoResolve" {
  type    = bool
  default = true
}
variable "DataFactoryAlertActivityRunsCancelledThreshold" {
  type    = number
  default = 0
  validation {
      condition = var.DataFactoryAlertActivityRunsCancelledThreshold >= 0
      error_message = "Value must be a positive number or 0."
  }
}
variable "DataFactoryAlertActivityRunsCancelledActivityType" {
  type    = list(string)
  default = ["*"]
}
variable "DataFactoryAlertActivityRunsCancelledPipelineName" {
  type    = list(string)
  default = ["*"]
}
variable "DataFactoryAlertActivityRunsCancelledFailureType" {
  type    = list(string)
  default = ["*"]
}
variable "DataFactoryAlertActivityRunsCancelledName" {
  type    = list(string)
  default = ["*"]
}
variable "DataFactoryAlertActivityRunsCancelledActionGroupIDs" {
  type    = set(string)
  default = []
}


####################################
#### AlertActivityRunsFailed ####
####################################

variable "DataFactoryAlertActivityRunsFailedCreated" {
  type    = bool
  default = false
}
variable "DataFactoryAlertActivityRunsFailedEnabled" {
  type    = bool
  default = true
}
variable "DataFactoryAlertActivityRunsFailedSeverity" {
  description = "The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3."
  type    = number
  default = 3
  validation {
      condition = (var.DataFactoryAlertActivityRunsFailedSeverity >= 0 && var.DataFactoryAlertActivityRunsFailedSeverity <= 4)
      error_message = "Value must be between 0-4. The lower the higher."
  }
}
variable "DataFactoryAlertActivityRunsFailedFrequency" {
  description = "The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M."
  type    = string
  default = "PT1M"
  validation {
      condition = (var.DataFactoryAlertActivityRunsFailedFrequency == "PT1M" || var.DataFactoryAlertActivityRunsFailedFrequency == "PT5M" || var.DataFactoryAlertActivityRunsFailedFrequency == "PT15M" || var.DataFactoryAlertActivityRunsFailedFrequency == "PT30M" || var.DataFactoryAlertActivityRunsFailedFrequency == "PT1H" )
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M and PT1H."
  }
}
variable "DataFactoryAlertActivityRunsFailedWindow" {
  description = "The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency."
  type    = string
  default = null
  validation {
      condition = (var.DataFactoryAlertActivityRunsFailedWindow == null || var.DataFactoryAlertActivityRunsFailedWindow == "PT1M" || var.DataFactoryAlertActivityRunsFailedWindow == "PT5M" || var.DataFactoryAlertActivityRunsFailedWindow == "PT15M" || var.DataFactoryAlertActivityRunsFailedWindow == "PT30M" || var.DataFactoryAlertActivityRunsFailedWindow == "PT1H" || var.DataFactoryAlertActivityRunsFailedWindow == "PT6H" || var.DataFactoryAlertActivityRunsFailedWindow == "PT2H" || var.DataFactoryAlertActivityRunsFailedWindow == "PT1D")
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D."
  }
}
variable "DataFactoryAlertActivityRunsFailedAutoResolve" {
  type    = bool
  default = true
}
variable "DataFactoryAlertActivityRunsFailedThreshold" {
  type    = number
  default = 0
  validation {
      condition = var.DataFactoryAlertActivityRunsFailedThreshold >= 0
      error_message = "Value must be a positive number or 0."
  }
}
variable "DataFactoryAlertActivityRunsFailedActivityType" {
  type    = list(string)
  default = ["*"]
}
variable "DataFactoryAlertActivityRunsFailedPipelineName" {
  type    = list(string)
  default = ["*"]
}
variable "DataFactoryAlertActivityRunsFailedFailureType" {
  type    = list(string)
  default = ["*"]
}
variable "DataFactoryAlertActivityRunsFailedName" {
  type    = list(string)
  default = ["*"]
}
variable "DataFactoryAlertActivityRunsFailedActionGroupIDs" {
  type    = set(string)
  default = []
}


####################################
#### AlertActivityRunsSucceeded ####
####################################

variable "DataFactoryAlertActivityRunsSucceededCreated" {
  type    = bool
  default = false
}
variable "DataFactoryAlertActivityRunsSucceededEnabled" {
  type    = bool
  default = true
}
variable "DataFactoryAlertActivityRunsSucceededSeverity" {
  description = "The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3."
  type    = number
  default = 3
  validation {
      condition = (var.DataFactoryAlertActivityRunsSucceededSeverity >= 0 && var.DataFactoryAlertActivityRunsSucceededSeverity <= 4)
      error_message = "Value must be between 0-4. The lower the higher."
  }
}
variable "DataFactoryAlertActivityRunsSucceededFrequency" {
  description = "The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M."
  type    = string
  default = "PT1M"
  validation {
      condition = (var.DataFactoryAlertActivityRunsSucceededFrequency == "PT1M" || var.DataFactoryAlertActivityRunsSucceededFrequency == "PT5M" || var.DataFactoryAlertActivityRunsSucceededFrequency == "PT15M" || var.DataFactoryAlertActivityRunsSucceededFrequency == "PT30M" || var.DataFactoryAlertActivityRunsSucceededFrequency == "PT1H" )
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M and PT1H."
  }
}
variable "DataFactoryAlertActivityRunsSucceededWindow" {
  description = "The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency."
  type    = string
  default = null
  validation {
      condition = (var.DataFactoryAlertActivityRunsSucceededWindow == null || var.DataFactoryAlertActivityRunsSucceededWindow == "PT1M" || var.DataFactoryAlertActivityRunsSucceededWindow == "PT5M" || var.DataFactoryAlertActivityRunsSucceededWindow == "PT15M" || var.DataFactoryAlertActivityRunsSucceededWindow == "PT30M" || var.DataFactoryAlertActivityRunsSucceededWindow == "PT1H" || var.DataFactoryAlertActivityRunsSucceededWindow == "PT6H" || var.DataFactoryAlertActivityRunsSucceededWindow == "PT2H" || var.DataFactoryAlertActivityRunsSucceededWindow == "PT1D")
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D."
  }
}
variable "DataFactoryAlertActivityRunsSucceededAutoResolve" {
  type    = bool
  default = true
}
variable "DataFactoryAlertActivityRunsSucceededThreshold" {
  type    = number
  default = 0
  validation {
      condition = var.DataFactoryAlertActivityRunsSucceededThreshold >= 0
      error_message = "Value must be a positive number or 0."
  }
}
variable "DataFactoryAlertActivityRunsSucceededActivityType" {
  type    = list(string)
  default = ["*"]
}
variable "DataFactoryAlertActivityRunsSucceededPipelineName" {
  type    = list(string)
  default = ["*"]
}
variable "DataFactoryAlertActivityRunsSucceededFailureType" {
  type    = list(string)
  default = ["*"]
}
variable "DataFactoryAlertActivityRunsSucceededName" {
  type    = list(string)
  default = ["*"]
}
variable "DataFactoryAlertActivityRunsSucceededActionGroupIDs" {
  type    = set(string)
  default = []
}


###############################################
################ Trigger Runs ################
###############################################

####################################
#### AlertTriggerRunsCancelled ####
####################################

variable "DataFactoryAlertTriggerRunsCancelledCreated" {
  type    = bool
  default = false
}
variable "DataFactoryAlertTriggerRunsCancelledEnabled" {
  type    = bool
  default = true
}
variable "DataFactoryAlertTriggerRunsCancelledSeverity" {
  description = "The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3."
  type    = number
  default = 3
  validation {
      condition = (var.DataFactoryAlertTriggerRunsCancelledSeverity >= 0 && var.DataFactoryAlertTriggerRunsCancelledSeverity <= 4)
      error_message = "Value must be between 0-4. The lower the higher."
  }
}
variable "DataFactoryAlertTriggerRunsCancelledFrequency" {
  description = "The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M."
  type    = string
  default = "PT1M"
  validation {
      condition = (var.DataFactoryAlertTriggerRunsCancelledFrequency == "PT1M" || var.DataFactoryAlertTriggerRunsCancelledFrequency == "PT5M" || var.DataFactoryAlertTriggerRunsCancelledFrequency == "PT15M" || var.DataFactoryAlertTriggerRunsCancelledFrequency == "PT30M" || var.DataFactoryAlertTriggerRunsCancelledFrequency == "PT1H" )
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M and PT1H."
  }
}
variable "DataFactoryAlertTriggerRunsCancelledWindow" {
  description = "The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency."
  type    = string
  default = null
  validation {
      condition = (var.DataFactoryAlertTriggerRunsCancelledWindow == null || var.DataFactoryAlertTriggerRunsCancelledWindow == "PT1M" || var.DataFactoryAlertTriggerRunsCancelledWindow == "PT5M" || var.DataFactoryAlertTriggerRunsCancelledWindow == "PT15M" || var.DataFactoryAlertTriggerRunsCancelledWindow == "PT30M" || var.DataFactoryAlertTriggerRunsCancelledWindow == "PT1H" || var.DataFactoryAlertTriggerRunsCancelledWindow == "PT6H" || var.DataFactoryAlertTriggerRunsCancelledWindow == "PT2H" || var.DataFactoryAlertTriggerRunsCancelledWindow == "PT1D")
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D."
  }
}
variable "DataFactoryAlertTriggerRunsCancelledAutoResolve" {
  type    = bool
  default = true
}
variable "DataFactoryAlertTriggerRunsCancelledThreshold" {
  type    = number
  default = 0
  validation {
      condition = var.DataFactoryAlertTriggerRunsCancelledThreshold >= 0
      error_message = "Value must be a positive number or 0."
  }
}
variable "DataFactoryAlertTriggerRunsCancelledFailureType" {
  type    = list(string)
  default = ["*"]
}
variable "DataFactoryAlertTriggerRunsCancelledName" {
  type    = list(string)
  default = ["*"]
}
variable "DataFactoryAlertTriggerRunsCancelledActionGroupIDs" {
  type    = set(string)
  default = []
}


####################################
#### AlertTriggerRunsFailed ####
####################################

variable "DataFactoryAlertTriggerRunsFailedCreated" {
  type    = bool
  default = false
}
variable "DataFactoryAlertTriggerRunsFailedEnabled" {
  type    = bool
  default = true
}
variable "DataFactoryAlertTriggerRunsFailedSeverity" {
  description = "The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3."
  type    = number
  default = 3
  validation {
      condition = (var.DataFactoryAlertTriggerRunsFailedSeverity >= 0 && var.DataFactoryAlertTriggerRunsFailedSeverity <= 4)
      error_message = "Value must be between 0-4. The lower the higher."
  }
}
variable "DataFactoryAlertTriggerRunsFailedFrequency" {
  description = "The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M."
  type    = string
  default = "PT1M"
  validation {
      condition = (var.DataFactoryAlertTriggerRunsFailedFrequency == "PT1M" || var.DataFactoryAlertTriggerRunsFailedFrequency == "PT5M" || var.DataFactoryAlertTriggerRunsFailedFrequency == "PT15M" || var.DataFactoryAlertTriggerRunsFailedFrequency == "PT30M" || var.DataFactoryAlertTriggerRunsFailedFrequency == "PT1H" )
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M and PT1H."
  }
}
variable "DataFactoryAlertTriggerRunsFailedWindow" {
  description = "The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency."
  type    = string
  default = null
  validation {
      condition = (var.DataFactoryAlertTriggerRunsFailedWindow == null || var.DataFactoryAlertTriggerRunsFailedWindow == "PT1M" || var.DataFactoryAlertTriggerRunsFailedWindow == "PT5M" || var.DataFactoryAlertTriggerRunsFailedWindow == "PT15M" || var.DataFactoryAlertTriggerRunsFailedWindow == "PT30M" || var.DataFactoryAlertTriggerRunsFailedWindow == "PT1H" || var.DataFactoryAlertTriggerRunsFailedWindow == "PT6H" || var.DataFactoryAlertTriggerRunsFailedWindow == "PT2H" || var.DataFactoryAlertTriggerRunsFailedWindow == "PT1D")
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D."
  }
}
variable "DataFactoryAlertTriggerRunsFailedAutoResolve" {
  type    = bool
  default = true
}
variable "DataFactoryAlertTriggerRunsFailedThreshold" {
  type    = number
  default = 0
  validation {
      condition = var.DataFactoryAlertTriggerRunsFailedThreshold >= 0
      error_message = "Value must be a positive number or 0."
  }
}
variable "DataFactoryAlertTriggerRunsFailedFailureType" {
  type    = list(string)
  default = ["*"]
}
variable "DataFactoryAlertTriggerRunsFailedName" {
  type    = list(string)
  default = ["*"]
}
variable "DataFactoryAlertTriggerRunsFailedActionGroupIDs" {
  type    = set(string)
  default = []
}


####################################
#### AlertTriggerRunsSucceeded ####
####################################

variable "DataFactoryAlertTriggerRunsSucceededCreated" {
  type    = bool
  default = false
}
variable "DataFactoryAlertTriggerRunsSucceededEnabled" {
  type    = bool
  default = true
}
variable "DataFactoryAlertTriggerRunsSucceededSeverity" {
  description = "The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3."
  type    = number
  default = 3
  validation {
      condition = (var.DataFactoryAlertTriggerRunsSucceededSeverity >= 0 && var.DataFactoryAlertTriggerRunsSucceededSeverity <= 4)
      error_message = "Value must be between 0-4. The lower the higher."
  }
}
variable "DataFactoryAlertTriggerRunsSucceededFrequency" {
  description = "The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M."
  type    = string
  default = "PT1M"
  validation {
      condition = (var.DataFactoryAlertTriggerRunsSucceededFrequency == "PT1M" || var.DataFactoryAlertTriggerRunsSucceededFrequency == "PT5M" || var.DataFactoryAlertTriggerRunsSucceededFrequency == "PT15M" || var.DataFactoryAlertTriggerRunsSucceededFrequency == "PT30M" || var.DataFactoryAlertTriggerRunsSucceededFrequency == "PT1H" )
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M and PT1H."
  }
}
variable "DataFactoryAlertTriggerRunsSucceededWindow" {
  description = "The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency."
  type    = string
  default = null
  validation {
      condition = (var.DataFactoryAlertTriggerRunsSucceededWindow == null || var.DataFactoryAlertTriggerRunsSucceededWindow == "PT1M" || var.DataFactoryAlertTriggerRunsSucceededWindow == "PT5M" || var.DataFactoryAlertTriggerRunsSucceededWindow == "PT15M" || var.DataFactoryAlertTriggerRunsSucceededWindow == "PT30M" || var.DataFactoryAlertTriggerRunsSucceededWindow == "PT1H" || var.DataFactoryAlertTriggerRunsSucceededWindow == "PT6H" || var.DataFactoryAlertTriggerRunsSucceededWindow == "PT2H" || var.DataFactoryAlertTriggerRunsSucceededWindow == "PT1D")
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D."
  }
}
variable "DataFactoryAlertTriggerRunsSucceededAutoResolve" {
  type    = bool
  default = true
}
variable "DataFactoryAlertTriggerRunsSucceededThreshold" {
  type    = number
  default = 0
  validation {
      condition = var.DataFactoryAlertTriggerRunsSucceededThreshold >= 0
      error_message = "Value must be a positive number or 0."
  }
}
variable "DataFactoryAlertTriggerRunsSucceededFailureType" {
  type    = list(string)
  default = ["*"]
}
variable "DataFactoryAlertTriggerRunsSucceededName" {
  type    = list(string)
  default = ["*"]
}
variable "DataFactoryAlertTriggerRunsSucceededActionGroupIDs" {
  type    = set(string)
  default = []
}




###############################################
################ Pipeline Runs ################
###############################################

####################################
#### AlertPipelineRunsCancelled ####
####################################

variable "DataFactoryAlertPipelineRunsCancelledCreated" {
  type    = bool
  default = false
}
variable "DataFactoryAlertPipelineRunsCancelledEnabled" {
  type    = bool
  default = true
}
variable "DataFactoryAlertPipelineRunsCancelledSeverity" {
  description = "The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3."
  type    = number
  default = 3
  validation {
      condition = (var.DataFactoryAlertPipelineRunsCancelledSeverity >= 0 && var.DataFactoryAlertPipelineRunsCancelledSeverity <= 4)
      error_message = "Value must be between 0-4. The lower the higher."
  }
}
variable "DataFactoryAlertPipelineRunsCancelledFrequency" {
  description = "The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M."
  type    = string
  default = "PT1M"
  validation {
      condition = (var.DataFactoryAlertPipelineRunsCancelledFrequency == "PT1M" || var.DataFactoryAlertPipelineRunsCancelledFrequency == "PT5M" || var.DataFactoryAlertPipelineRunsCancelledFrequency == "PT15M" || var.DataFactoryAlertPipelineRunsCancelledFrequency == "PT30M" || var.DataFactoryAlertPipelineRunsCancelledFrequency == "PT1H" )
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M and PT1H."
  }
}
variable "DataFactoryAlertPipelineRunsCancelledWindow" {
  description = "The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency."
  type    = string
  default = null
  validation {
      condition = (var.DataFactoryAlertPipelineRunsCancelledWindow == null || var.DataFactoryAlertPipelineRunsCancelledWindow == "PT1M" || var.DataFactoryAlertPipelineRunsCancelledWindow == "PT5M" || var.DataFactoryAlertPipelineRunsCancelledWindow == "PT15M" || var.DataFactoryAlertPipelineRunsCancelledWindow == "PT30M" || var.DataFactoryAlertPipelineRunsCancelledWindow == "PT1H" || var.DataFactoryAlertPipelineRunsCancelledWindow == "PT6H" || var.DataFactoryAlertPipelineRunsCancelledWindow == "PT2H" || var.DataFactoryAlertPipelineRunsCancelledWindow == "PT1D")
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D."
  }
}
variable "DataFactoryAlertPipelineRunsCancelledAutoResolve" {
  type    = bool
  default = true
}
variable "DataFactoryAlertPipelineRunsCancelledThreshold" {
  type    = number
  default = 0
  validation {
      condition = var.DataFactoryAlertPipelineRunsCancelledThreshold >= 0
      error_message = "Value must be a positive number or 0."
  }
}
variable "DataFactoryAlertPipelineRunsCancelledFailureType" {
  type    = list(string)
  default = ["*"]
}
variable "DataFactoryAlertPipelineRunsCancelledName" {
  type    = list(string)
  default = ["*"]
}
variable "DataFactoryAlertPipelineRunsCancelledActionGroupIDs" {
  type    = set(string)
  default = []
}

#################################
#### AlertPipelineRunsFailed ####
#################################

variable "DataFactoryAlertPipelineRunsFailedCreated" {
  type    = bool
  default = false
}
variable "DataFactoryAlertPipelineRunsFailedEnabled" {
  type    = bool
  default = true
}
variable "DataFactoryAlertPipelineRunsFailedSeverity" {
  description = "The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3."
  type    = number
  default = 3
  validation {
      condition = (var.DataFactoryAlertPipelineRunsFailedSeverity >= 0 && var.DataFactoryAlertPipelineRunsFailedSeverity <= 4)
      error_message = "Value must be between 0-4. The lower the higher."
  }
}
variable "DataFactoryAlertPipelineRunsFailedFrequency" {
  description = "The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M."
  type    = string
  default = "PT1M"
  validation {
      condition = (var.DataFactoryAlertPipelineRunsFailedFrequency == "PT1M" || var.DataFactoryAlertPipelineRunsFailedFrequency == "PT5M" || var.DataFactoryAlertPipelineRunsFailedFrequency == "PT15M" || var.DataFactoryAlertPipelineRunsFailedFrequency == "PT30M" || var.DataFactoryAlertPipelineRunsFailedFrequency == "PT1H" )
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M and PT1H."
  }
}
variable "DataFactoryAlertPipelineRunsFailedWindow" {
  description = "The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency."
  type    = string
  default = null
  validation {
      condition = (var.DataFactoryAlertPipelineRunsFailedWindow == null || var.DataFactoryAlertPipelineRunsFailedWindow == "PT1M" || var.DataFactoryAlertPipelineRunsFailedWindow == "PT5M" || var.DataFactoryAlertPipelineRunsFailedWindow == "PT15M" || var.DataFactoryAlertPipelineRunsFailedWindow == "PT30M" || var.DataFactoryAlertPipelineRunsFailedWindow == "PT1H" || var.DataFactoryAlertPipelineRunsFailedWindow == "PT6H" || var.DataFactoryAlertPipelineRunsFailedWindow == "PT2H" || var.DataFactoryAlertPipelineRunsFailedWindow == "PT1D")
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D."
  }
}
variable "DataFactoryAlertPipelineRunsFailedAutoResolve" {
  type    = bool
  default = true
}
variable "DataFactoryAlertPipelineRunsFailedThreshold" {
  type    = number
  default = 0
  validation {
      condition = var.DataFactoryAlertPipelineRunsFailedThreshold >= 0
      error_message = "Value must be a positive number or 0."
  }
}
variable "DataFactoryAlertPipelineRunsFailedFailureType" {
  type    = list(string)
  default = ["*"]
}
variable "DataFactoryAlertPipelineRunsFailedName" {
  type    = list(string)
  default = ["*"]
}
variable "DataFactoryAlertPipelineRunsFailedActionGroupIDs" {
  type    = set(string)
  default = []
}

####################################
#### AlertPipelineRunsSucceeded ####
####################################

variable "DataFactoryAlertPipelineRunsSucceededCreated" {
  type    = bool
  default = false
}
variable "DataFactoryAlertPipelineRunsSucceededEnabled" {
  type    = bool
  default = true
}
variable "DataFactoryAlertPipelineRunsSucceededSeverity" {
  description = "The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3."
  type    = number
  default = 3
  validation {
      condition = (var.DataFactoryAlertPipelineRunsSucceededSeverity >= 0 && var.DataFactoryAlertPipelineRunsSucceededSeverity <= 4)
      error_message = "Value must be between 0-4. The lower the higher."
  }
}
variable "DataFactoryAlertPipelineRunsSucceededFrequency" {
  description = "The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M."
  type    = string
  default = "PT1M"
  validation {
      condition = (var.DataFactoryAlertPipelineRunsSucceededFrequency == "PT1M" || var.DataFactoryAlertPipelineRunsSucceededFrequency == "PT5M" || var.DataFactoryAlertPipelineRunsSucceededFrequency == "PT15M" || var.DataFactoryAlertPipelineRunsSucceededFrequency == "PT30M" || var.DataFactoryAlertPipelineRunsSucceededFrequency == "PT1H" )
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M and PT1H."
  }
}
variable "DataFactoryAlertPipelineRunsSucceededWindow" {
  description = "The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency."
  type    = string
  default = null
  validation {
      condition = (var.DataFactoryAlertPipelineRunsSucceededWindow == null || var.DataFactoryAlertPipelineRunsSucceededWindow == "PT1M" || var.DataFactoryAlertPipelineRunsSucceededWindow == "PT5M" || var.DataFactoryAlertPipelineRunsSucceededWindow == "PT15M" || var.DataFactoryAlertPipelineRunsSucceededWindow == "PT30M" || var.DataFactoryAlertPipelineRunsSucceededWindow == "PT1H" || var.DataFactoryAlertPipelineRunsSucceededWindow == "PT6H" || var.DataFactoryAlertPipelineRunsSucceededWindow == "PT2H" || var.DataFactoryAlertPipelineRunsSucceededWindow == "PT1D")
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D."
  }
}
variable "DataFactoryAlertPipelineRunsSucceededAutoResolve" {
  type    = bool
  default = true
}
variable "DataFactoryAlertPipelineRunsSucceededThreshold" {
  type    = number
  default = 0
  validation {
      condition = var.DataFactoryAlertPipelineRunsSucceededThreshold >= 0
      error_message = "Value must be a positive number or 0."
  }
}
variable "DataFactoryAlertPipelineRunsSucceededFailureType" {
  type    = list(string)
  default = ["*"]
}
variable "DataFactoryAlertPipelineRunsSucceededName" {
  type    = list(string)
  default = ["*"]
}
variable "DataFactoryAlertPipelineRunsSucceededActionGroupIDs" {
  type    = set(string)
  default = []
}

######################################
#### AlertPipelineRunsElapsedTime ####
######################################

variable "DataFactoryAlertPipelineRunsElapsedTimeCreated" {
  type    = bool
  default = false
}
variable "DataFactoryAlertPipelineRunsElapsedTimeEnabled" {
  type    = bool
  default = true
}
variable "DataFactoryAlertPipelineRunsElapsedTimeSeverity" {
  description = "The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3."
  type    = number
  default = 3
  validation {
      condition = (var.DataFactoryAlertPipelineRunsElapsedTimeSeverity >= 0 && var.DataFactoryAlertPipelineRunsElapsedTimeSeverity <= 4)
      error_message = "Value must be between 0-4. The lower the higher."
  }
}
variable "DataFactoryAlertPipelineRunsElapsedTimeFrequency" {
  description = "The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M."
  type    = string
  default = "PT1M"
  validation {
      condition = (var.DataFactoryAlertPipelineRunsElapsedTimeFrequency == "PT1M" || var.DataFactoryAlertPipelineRunsElapsedTimeFrequency == "PT5M" || var.DataFactoryAlertPipelineRunsElapsedTimeFrequency == "PT15M" || var.DataFactoryAlertPipelineRunsElapsedTimeFrequency == "PT30M" || var.DataFactoryAlertPipelineRunsElapsedTimeFrequency == "PT1H" )
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M and PT1H."
  }
}
variable "DataFactoryAlertPipelineRunsElapsedTimeWindow" {
  description = "The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency."
  type    = string
  default = null
  validation {
      condition = (var.DataFactoryAlertPipelineRunsElapsedTimeWindow == null || var.DataFactoryAlertPipelineRunsElapsedTimeWindow == "PT1M" || var.DataFactoryAlertPipelineRunsElapsedTimeWindow == "PT5M" || var.DataFactoryAlertPipelineRunsElapsedTimeWindow == "PT15M" || var.DataFactoryAlertPipelineRunsElapsedTimeWindow == "PT30M" || var.DataFactoryAlertPipelineRunsElapsedTimeWindow == "PT1H" || var.DataFactoryAlertPipelineRunsElapsedTimeWindow == "PT6H" || var.DataFactoryAlertPipelineRunsElapsedTimeWindow == "PT2H" || var.DataFactoryAlertPipelineRunsElapsedTimeWindow == "PT1D")
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D."
  }
}
variable "DataFactoryAlertPipelineRunsElapsedTimeAutoResolve" {
  type    = bool
  default = true
}
variable "DataFactoryAlertPipelineRunsElapsedTimeThreshold" {
  type    = number
  default = 86400
  validation {
      condition = var.DataFactoryAlertPipelineRunsElapsedTimeThreshold >= 1
      error_message = "Value must be a positive number."
  }
}
variable "DataFactoryAlertPipelineRunsElapsedTimeRunID" {
  type    = list(string)
  default = ["*"]
}
variable "DataFactoryAlertPipelineRunsElapsedTimeName" {
  type    = list(string)
  default = ["*"]
}
variable "DataFactoryAlertPipelineRunsElapsedTimeActionGroupIDs" {
  type    = set(string)
  default = []
}


#############################################
################ Integration ################
#############################################

#########################################
#### AlertIntegrationAvailableMemory ####
#########################################

variable "DataFactoryAlertIntegrationAvailableMemoryCreated" {
  type    = bool
  default = false
}
variable "DataFactoryAlertIntegrationAvailableMemoryEnabled" {
  type    = bool
  default = true
}
variable "DataFactoryAlertIntegrationAvailableMemorySeverity" {
  description = "The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3."
  type    = number
  default = 3
  validation {
      condition = (var.DataFactoryAlertIntegrationAvailableMemorySeverity >= 0 && var.DataFactoryAlertIntegrationAvailableMemorySeverity <= 4)
      error_message = "Value must be between 0-4. The lower the higher."
  }
}
variable "DataFactoryAlertIntegrationAvailableMemoryFrequency" {
  description = "The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M."
  type    = string
  default = "PT1M"
  validation {
      condition = (var.DataFactoryAlertIntegrationAvailableMemoryFrequency == "PT1M" || var.DataFactoryAlertIntegrationAvailableMemoryFrequency == "PT5M" || var.DataFactoryAlertIntegrationAvailableMemoryFrequency == "PT15M" || var.DataFactoryAlertIntegrationAvailableMemoryFrequency == "PT30M" || var.DataFactoryAlertIntegrationAvailableMemoryFrequency == "PT1H" )
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M and PT1H."
  }
}
variable "DataFactoryAlertIntegrationAvailableMemoryWindow" {
  description = "The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency."
  type    = string
  default = null
  validation {
      condition = (var.DataFactoryAlertIntegrationAvailableMemoryWindow == null || var.DataFactoryAlertIntegrationAvailableMemoryWindow == "PT1M" || var.DataFactoryAlertIntegrationAvailableMemoryWindow == "PT5M" || var.DataFactoryAlertIntegrationAvailableMemoryWindow == "PT15M" || var.DataFactoryAlertIntegrationAvailableMemoryWindow == "PT30M" || var.DataFactoryAlertIntegrationAvailableMemoryWindow == "PT1H" || var.DataFactoryAlertIntegrationAvailableMemoryWindow == "PT6H" || var.DataFactoryAlertIntegrationAvailableMemoryWindow == "PT2H" || var.DataFactoryAlertIntegrationAvailableMemoryWindow == "PT1D")
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D."
  }
}
variable "DataFactoryAlertIntegrationAvailableMemoryAutoResolve" {
  type    = bool
  default = true
}
variable "DataFactoryAlertIntegrationAvailableMemoryThreshold" {
  type    = number
  default = 1000000000 
  validation {
      condition = var.DataFactoryAlertIntegrationAvailableMemoryThreshold >= 1
      error_message = "Value must be a positive number."
  }
}
variable "DataFactoryAlertIntegrationAvailableMemoryIntegrationNames" {
  type    = list(string)
  default = ["*"]
}
variable "DataFactoryAlertIntegrationAvailableMemoryNodeNames" {
  type    = list(string)
  default = ["*"]
}
variable "DataFactoryAlertIntegrationAvailableMemoryActionGroupIDs" {
  type    = set(string)
  default = []
}

############################################
#### AlertIntegrationAvailableNodeCount ####
############################################

variable "DataFactoryAlertIntegrationAvailableNodeCountCreated" {
  type    = bool
  default = false
}
variable "DataFactoryAlertIntegrationAvailableNodeCountEnabled" {
  type    = bool
  default = true
}
variable "DataFactoryAlertIntegrationAvailableNodeCountSeverity" {
  description = "The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3."
  type    = number
  default = 3
  validation {
      condition = (var.DataFactoryAlertIntegrationAvailableNodeCountSeverity >= 0 && var.DataFactoryAlertIntegrationAvailableNodeCountSeverity <= 4)
      error_message = "Value must be between 0-4. The lower the higher."
  }
}
variable "DataFactoryAlertIntegrationAvailableNodeCountFrequency" {
  description = "The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M."
  type    = string
  default = "PT1M"
  validation {
      condition = (var.DataFactoryAlertIntegrationAvailableNodeCountFrequency == "PT1M" || var.DataFactoryAlertIntegrationAvailableNodeCountFrequency == "PT5M" || var.DataFactoryAlertIntegrationAvailableNodeCountFrequency == "PT15M" || var.DataFactoryAlertIntegrationAvailableNodeCountFrequency == "PT30M" || var.DataFactoryAlertIntegrationAvailableNodeCountFrequency == "PT1H" )
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M and PT1H."
  }
}
variable "DataFactoryAlertIntegrationAvailableNodeCountWindow" {
  description = "The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency."
  type    = string
  default = null
  validation {
      condition = (var.DataFactoryAlertIntegrationAvailableNodeCountWindow == null || var.DataFactoryAlertIntegrationAvailableNodeCountWindow == "PT1M" || var.DataFactoryAlertIntegrationAvailableNodeCountWindow == "PT5M" || var.DataFactoryAlertIntegrationAvailableNodeCountWindow == "PT15M" || var.DataFactoryAlertIntegrationAvailableNodeCountWindow == "PT30M" || var.DataFactoryAlertIntegrationAvailableNodeCountWindow == "PT1H" || var.DataFactoryAlertIntegrationAvailableNodeCountWindow == "PT6H" || var.DataFactoryAlertIntegrationAvailableNodeCountWindow == "PT2H" || var.DataFactoryAlertIntegrationAvailableNodeCountWindow == "PT1D")
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D."
  }
}
variable "DataFactoryAlertIntegrationAvailableNodeCountAutoResolve" {
  type    = bool
  default = true
}
variable "DataFactoryAlertIntegrationAvailableNodeCountThreshold" {
  type    = number
  default = 1000000000 
  validation {
      condition = var.DataFactoryAlertIntegrationAvailableNodeCountThreshold >= 1
      error_message = "Value must be a positive number."
  }
}
variable "DataFactoryAlertIntegrationAvailableNodeCountIntegrationNames" {
  type    = list(string)
  default = ["*"]
}
variable "DataFactoryAlertIntegrationAvailableNodeCountActionGroupIDs" {
  type    = set(string)
  default = []
}

#######################################
#### AlertIntegrationQueueDuration ####
#######################################

variable "DataFactoryAlertIntegrationQueueDurationCreated" {
  type    = bool
  default = false
}
variable "DataFactoryAlertIntegrationQueueDurationEnabled" {
  type    = bool
  default = true
}
variable "DataFactoryAlertIntegrationQueueDurationSeverity" {
  description = "The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3."
  type    = number
  default = 3
  validation {
      condition = (var.DataFactoryAlertIntegrationQueueDurationSeverity >= 0 && var.DataFactoryAlertIntegrationQueueDurationSeverity <= 4)
      error_message = "Value must be between 0-4. The lower the higher."
  }
}
variable "DataFactoryAlertIntegrationQueueDurationFrequency" {
  description = "The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M."
  type    = string
  default = "PT1M"
  validation {
      condition = (var.DataFactoryAlertIntegrationQueueDurationFrequency == "PT1M" || var.DataFactoryAlertIntegrationQueueDurationFrequency == "PT5M" || var.DataFactoryAlertIntegrationQueueDurationFrequency == "PT15M" || var.DataFactoryAlertIntegrationQueueDurationFrequency == "PT30M" || var.DataFactoryAlertIntegrationQueueDurationFrequency == "PT1H" )
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M and PT1H."
  }
}
variable "DataFactoryAlertIntegrationQueueDurationWindow" {
  description = "The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency."
  type    = string
  default = null
  validation {
      condition = (var.DataFactoryAlertIntegrationQueueDurationWindow == null || var.DataFactoryAlertIntegrationQueueDurationWindow == "PT1M" || var.DataFactoryAlertIntegrationQueueDurationWindow == "PT5M" || var.DataFactoryAlertIntegrationQueueDurationWindow == "PT15M" || var.DataFactoryAlertIntegrationQueueDurationWindow == "PT30M" || var.DataFactoryAlertIntegrationQueueDurationWindow == "PT1H" || var.DataFactoryAlertIntegrationQueueDurationWindow == "PT6H" || var.DataFactoryAlertIntegrationQueueDurationWindow == "PT2H" || var.DataFactoryAlertIntegrationQueueDurationWindow == "PT1D")
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D."
  }
}
variable "DataFactoryAlertIntegrationQueueDurationAutoResolve" {
  type    = bool
  default = true
}
variable "DataFactoryAlertIntegrationQueueDurationThreshold" {
  type    = number
  default = 60
  validation {
      condition = var.DataFactoryAlertIntegrationQueueDurationThreshold >= 1
      error_message = "Value must be a positive number."
  }
}
variable "DataFactoryAlertIntegrationQueueDurationIntegrationNames" {
  type    = list(string)
  default = ["*"]
}
variable "DataFactoryAlertIntegrationQueueDurationActionGroupIDs" {
  type    = set(string)
  default = []
}

#####################################
#### AlertIntegrationQueueLength ####
#####################################

variable "DataFactoryAlertIntegrationQueueLengthCreated" {
  type    = bool
  default = false
}
variable "DataFactoryAlertIntegrationQueueLengthEnabled" {
  type    = bool
  default = true
}
variable "DataFactoryAlertIntegrationQueueLengthSeverity" {
  description = "The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3."
  type    = number
  default = 3
  validation {
      condition = (var.DataFactoryAlertIntegrationQueueLengthSeverity >= 0 && var.DataFactoryAlertIntegrationQueueLengthSeverity <= 4)
      error_message = "Value must be between 0-4. The lower the higher."
  }
}
variable "DataFactoryAlertIntegrationQueueLengthFrequency" {
  description = "The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M."
  type    = string
  default = "PT1M"
  validation {
      condition = (var.DataFactoryAlertIntegrationQueueLengthFrequency == "PT1M" || var.DataFactoryAlertIntegrationQueueLengthFrequency == "PT5M" || var.DataFactoryAlertIntegrationQueueLengthFrequency == "PT15M" || var.DataFactoryAlertIntegrationQueueLengthFrequency == "PT30M" || var.DataFactoryAlertIntegrationQueueLengthFrequency == "PT1H" )
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M and PT1H."
  }
}
variable "DataFactoryAlertIntegrationQueueLengthWindow" {
  description = "The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency."
  type    = string
  default = null
  validation {
      condition = (var.DataFactoryAlertIntegrationQueueLengthWindow == null || var.DataFactoryAlertIntegrationQueueLengthWindow == "PT1M" || var.DataFactoryAlertIntegrationQueueLengthWindow == "PT5M" || var.DataFactoryAlertIntegrationQueueLengthWindow == "PT15M" || var.DataFactoryAlertIntegrationQueueLengthWindow == "PT30M" || var.DataFactoryAlertIntegrationQueueLengthWindow == "PT1H" || var.DataFactoryAlertIntegrationQueueLengthWindow == "PT6H" || var.DataFactoryAlertIntegrationQueueLengthWindow == "PT2H" || var.DataFactoryAlertIntegrationQueueLengthWindow == "PT1D")
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D."
  }
}
variable "DataFactoryAlertIntegrationQueueLengthAutoResolve" {
  type    = bool
  default = true
}
variable "DataFactoryAlertIntegrationQueueLengthThreshold" {
  type    = number
  default = 10
  validation {
      condition = var.DataFactoryAlertIntegrationQueueLengthThreshold >= 1
      error_message = "Value must be a positive number."
  }
}
variable "DataFactoryAlertIntegrationQueueLengthIntegrationNames" {
  type    = list(string)
  default = ["*"]
}
variable "DataFactoryAlertIntegrationQueueLengthActionGroupIDs" {
  type    = set(string)
  default = []
}

#######################################
#### AlertIntegrationCPUPercentage ####
#######################################

variable "DataFactoryAlertIntegrationCPUPercentageCreated" {
  type    = bool
  default = false
}
variable "DataFactoryAlertIntegrationCPUPercentageEnabled" {
  type    = bool
  default = true
}
variable "DataFactoryAlertIntegrationCPUPercentageSeverity" {
  description = "The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3."
  type    = number
  default = 3
  validation {
      condition = (var.DataFactoryAlertIntegrationCPUPercentageSeverity >= 0 && var.DataFactoryAlertIntegrationCPUPercentageSeverity <= 4)
      error_message = "Value must be between 0-4. The lower the higher."
  }
}
variable "DataFactoryAlertIntegrationCPUPercentageFrequency" {
  description = "The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M."
  type    = string
  default = "PT1M"
  validation {
      condition = (var.DataFactoryAlertIntegrationCPUPercentageFrequency == "PT1M" || var.DataFactoryAlertIntegrationCPUPercentageFrequency == "PT5M" || var.DataFactoryAlertIntegrationCPUPercentageFrequency == "PT15M" || var.DataFactoryAlertIntegrationCPUPercentageFrequency == "PT30M" || var.DataFactoryAlertIntegrationCPUPercentageFrequency == "PT1H" )
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M and PT1H."
  }
}
variable "DataFactoryAlertIntegrationCPUPercentageWindow" {
  description = "The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency."
  type    = string
  default = null
  validation {
      condition = (var.DataFactoryAlertIntegrationCPUPercentageWindow == null || var.DataFactoryAlertIntegrationCPUPercentageWindow == "PT1M" || var.DataFactoryAlertIntegrationCPUPercentageWindow == "PT5M" || var.DataFactoryAlertIntegrationCPUPercentageWindow == "PT15M" || var.DataFactoryAlertIntegrationCPUPercentageWindow == "PT30M" || var.DataFactoryAlertIntegrationCPUPercentageWindow == "PT1H" || var.DataFactoryAlertIntegrationCPUPercentageWindow == "PT6H" || var.DataFactoryAlertIntegrationCPUPercentageWindow == "PT2H" || var.DataFactoryAlertIntegrationCPUPercentageWindow == "PT1D")
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D."
  }
}
variable "DataFactoryAlertIntegrationCPUPercentageAutoResolve" {
  type    = bool
  default = true
}
variable "DataFactoryAlertIntegrationCPUPercentageThreshold" {
  type    = number
  default = 95
  validation {
      condition = (var.DataFactoryAlertIntegrationCPUPercentageThreshold >= 1 && var.DataFactoryAlertIntegrationCPUPercentageThreshold <= 100)
      error_message = "Value must be between 1-100."
  }
}
variable "DataFactoryAlertIntegrationCPUPercentageIntegrationNames" {
  type    = list(string)
  default = ["*"]
}
variable "DataFactoryAlertIntegrationCPUPercentageNodeNames" {
  type    = list(string)
  default = ["*"]
}
variable "DataFactoryAlertIntegrationCPUPercentageActionGroupIDs" {
  type    = set(string)
  default = []
}

##################################################
################ SSIS Integration ################
##################################################

############################################
#### AlertSSISIntegrationStartCancelled ####
############################################

variable "DataFactoryAlertSSISIntegrationStartCancelledCreated" {
  type    = bool
  default = false
}
variable "DataFactoryAlertSSISIntegrationStartCancelledEnabled" {
  type    = bool
  default = true
}
variable "DataFactoryAlertSSISIntegrationStartCancelledSeverity" {
  description = "The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3."
  type    = number
  default = 3
  validation {
      condition = (var.DataFactoryAlertSSISIntegrationStartCancelledSeverity >= 0 && var.DataFactoryAlertSSISIntegrationStartCancelledSeverity <= 4)
      error_message = "Value must be between 0-4. The lower the higher."
  }
}
variable "DataFactoryAlertSSISIntegrationStartCancelledFrequency" {
  description = "The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M."
  type    = string
  default = "PT1M"
  validation {
      condition = (var.DataFactoryAlertSSISIntegrationStartCancelledFrequency == "PT1M" || var.DataFactoryAlertSSISIntegrationStartCancelledFrequency == "PT5M" || var.DataFactoryAlertSSISIntegrationStartCancelledFrequency == "PT15M" || var.DataFactoryAlertSSISIntegrationStartCancelledFrequency == "PT30M" || var.DataFactoryAlertSSISIntegrationStartCancelledFrequency == "PT1H" )
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M and PT1H."
  }
}
variable "DataFactoryAlertSSISIntegrationStartCancelledWindow" {
  description = "The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency."
  type    = string
  default = null
  validation {
      condition = (var.DataFactoryAlertSSISIntegrationStartCancelledWindow == null || var.DataFactoryAlertSSISIntegrationStartCancelledWindow == "PT1M" || var.DataFactoryAlertSSISIntegrationStartCancelledWindow == "PT5M" || var.DataFactoryAlertSSISIntegrationStartCancelledWindow == "PT15M" || var.DataFactoryAlertSSISIntegrationStartCancelledWindow == "PT30M" || var.DataFactoryAlertSSISIntegrationStartCancelledWindow == "PT1H" || var.DataFactoryAlertSSISIntegrationStartCancelledWindow == "PT6H" || var.DataFactoryAlertSSISIntegrationStartCancelledWindow == "PT2H" || var.DataFactoryAlertSSISIntegrationStartCancelledWindow == "PT1D")
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D."
  }
}
variable "DataFactoryAlertSSISIntegrationStartCancelledAutoResolve" {
  type    = bool
  default = true
}
variable "DataFactoryAlertSSISIntegrationStartCancelledThreshold" {
  type    = number
  default = 0
  validation {
      condition = var.DataFactoryAlertSSISIntegrationStartCancelledThreshold >= 0
      error_message = "Value must be a positive number or 0."
  }
}
variable "DataFactoryAlertSSISIntegrationStartCancelledRuntimeNames" {
  type    = list(string)
  default = ["*"]
}
variable "DataFactoryAlertSSISIntegrationStartCancelledActionGroupIDs" {
  type    = set(string)
  default = []
}

############################################
#### AlertSSISIntegrationStartFailed ####
############################################

variable "DataFactoryAlertSSISIntegrationStartFailedCreated" {
  type    = bool
  default = false
}
variable "DataFactoryAlertSSISIntegrationStartFailedEnabled" {
  type    = bool
  default = true
}
variable "DataFactoryAlertSSISIntegrationStartFailedSeverity" {
  description = "The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3."
  type    = number
  default = 3
  validation {
      condition = (var.DataFactoryAlertSSISIntegrationStartFailedSeverity >= 0 && var.DataFactoryAlertSSISIntegrationStartFailedSeverity <= 4)
      error_message = "Value must be between 0-4. The lower the higher."
  }
}
variable "DataFactoryAlertSSISIntegrationStartFailedFrequency" {
  description = "The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M."
  type    = string
  default = "PT1M"
  validation {
      condition = (var.DataFactoryAlertSSISIntegrationStartFailedFrequency == "PT1M" || var.DataFactoryAlertSSISIntegrationStartFailedFrequency == "PT5M" || var.DataFactoryAlertSSISIntegrationStartFailedFrequency == "PT15M" || var.DataFactoryAlertSSISIntegrationStartFailedFrequency == "PT30M" || var.DataFactoryAlertSSISIntegrationStartFailedFrequency == "PT1H" )
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M and PT1H."
  }
}
variable "DataFactoryAlertSSISIntegrationStartFailedWindow" {
  description = "The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency."
  type    = string
  default = null
  validation {
      condition = (var.DataFactoryAlertSSISIntegrationStartFailedWindow == null || var.DataFactoryAlertSSISIntegrationStartFailedWindow == "PT1M" || var.DataFactoryAlertSSISIntegrationStartFailedWindow == "PT5M" || var.DataFactoryAlertSSISIntegrationStartFailedWindow == "PT15M" || var.DataFactoryAlertSSISIntegrationStartFailedWindow == "PT30M" || var.DataFactoryAlertSSISIntegrationStartFailedWindow == "PT1H" || var.DataFactoryAlertSSISIntegrationStartFailedWindow == "PT6H" || var.DataFactoryAlertSSISIntegrationStartFailedWindow == "PT2H" || var.DataFactoryAlertSSISIntegrationStartFailedWindow == "PT1D")
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D."
  }
}
variable "DataFactoryAlertSSISIntegrationStartFailedAutoResolve" {
  type    = bool
  default = true
}
variable "DataFactoryAlertSSISIntegrationStartFailedThreshold" {
  type    = number
  default = 0
  validation {
      condition = var.DataFactoryAlertSSISIntegrationStartFailedThreshold >= 0
      error_message = "Value must be a positive number or 0."
  }
}
variable "DataFactoryAlertSSISIntegrationStartFailedRuntimeNames" {
  type    = list(string)
  default = ["*"]
}
variable "DataFactoryAlertSSISIntegrationStartFailedActionGroupIDs" {
  type    = set(string)
  default = []
}

############################################
#### AlertSSISIntegrationStartSucceeded ####
############################################

variable "DataFactoryAlertSSISIntegrationStartSucceededCreated" {
  type    = bool
  default = false
}
variable "DataFactoryAlertSSISIntegrationStartSucceededEnabled" {
  type    = bool
  default = true
}
variable "DataFactoryAlertSSISIntegrationStartSucceededSeverity" {
  description = "The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3."
  type    = number
  default = 3
  validation {
      condition = (var.DataFactoryAlertSSISIntegrationStartSucceededSeverity >= 0 && var.DataFactoryAlertSSISIntegrationStartSucceededSeverity <= 4)
      error_message = "Value must be between 0-4. The lower the higher."
  }
}
variable "DataFactoryAlertSSISIntegrationStartSucceededFrequency" {
  description = "The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M."
  type    = string
  default = "PT1M"
  validation {
      condition = (var.DataFactoryAlertSSISIntegrationStartSucceededFrequency == "PT1M" || var.DataFactoryAlertSSISIntegrationStartSucceededFrequency == "PT5M" || var.DataFactoryAlertSSISIntegrationStartSucceededFrequency == "PT15M" || var.DataFactoryAlertSSISIntegrationStartSucceededFrequency == "PT30M" || var.DataFactoryAlertSSISIntegrationStartSucceededFrequency == "PT1H" )
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M and PT1H."
  }
}
variable "DataFactoryAlertSSISIntegrationStartSucceededWindow" {
  description = "The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency."
  type    = string
  default = null
  validation {
      condition = (var.DataFactoryAlertSSISIntegrationStartSucceededWindow == null || var.DataFactoryAlertSSISIntegrationStartSucceededWindow == "PT1M" || var.DataFactoryAlertSSISIntegrationStartSucceededWindow == "PT5M" || var.DataFactoryAlertSSISIntegrationStartSucceededWindow == "PT15M" || var.DataFactoryAlertSSISIntegrationStartSucceededWindow == "PT30M" || var.DataFactoryAlertSSISIntegrationStartSucceededWindow == "PT1H" || var.DataFactoryAlertSSISIntegrationStartSucceededWindow == "PT6H" || var.DataFactoryAlertSSISIntegrationStartSucceededWindow == "PT2H" || var.DataFactoryAlertSSISIntegrationStartSucceededWindow == "PT1D")
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D."
  }
}
variable "DataFactoryAlertSSISIntegrationStartSucceededAutoResolve" {
  type    = bool
  default = true
}
variable "DataFactoryAlertSSISIntegrationStartSucceededThreshold" {
  type    = number
  default = 0
  validation {
      condition = var.DataFactoryAlertSSISIntegrationStartSucceededThreshold >= 0
      error_message = "Value must be a positive number or 0."
  }
}
variable "DataFactoryAlertSSISIntegrationStartSucceededRuntimeNames" {
  type    = list(string)
  default = ["*"]
}
variable "DataFactoryAlertSSISIntegrationStartSucceededActionGroupIDs" {
  type    = set(string)
  default = []
}

#########################################
#### AlertSSISIntegrationStopStucked ####
#########################################

variable "DataFactoryAlertSSISIntegrationStopStuckedCreated" {
  type    = bool
  default = false
}
variable "DataFactoryAlertSSISIntegrationStopStuckedEnabled" {
  type    = bool
  default = true
}
variable "DataFactoryAlertSSISIntegrationStopStuckedSeverity" {
  description = "The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3."
  type    = number
  default = 3
  validation {
      condition = (var.DataFactoryAlertSSISIntegrationStopStuckedSeverity >= 0 && var.DataFactoryAlertSSISIntegrationStopStuckedSeverity <= 4)
      error_message = "Value must be between 0-4. The lower the higher."
  }
}
variable "DataFactoryAlertSSISIntegrationStopStuckedFrequency" {
  description = "The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M."
  type    = string
  default = "PT1M"
  validation {
      condition = (var.DataFactoryAlertSSISIntegrationStopStuckedFrequency == "PT1M" || var.DataFactoryAlertSSISIntegrationStopStuckedFrequency == "PT5M" || var.DataFactoryAlertSSISIntegrationStopStuckedFrequency == "PT15M" || var.DataFactoryAlertSSISIntegrationStopStuckedFrequency == "PT30M" || var.DataFactoryAlertSSISIntegrationStopStuckedFrequency == "PT1H" )
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M and PT1H."
  }
}
variable "DataFactoryAlertSSISIntegrationStopStuckedWindow" {
  description = "The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency."
  type    = string
  default = null
  validation {
      condition = (var.DataFactoryAlertSSISIntegrationStopStuckedWindow == null || var.DataFactoryAlertSSISIntegrationStopStuckedWindow == "PT1M" || var.DataFactoryAlertSSISIntegrationStopStuckedWindow == "PT5M" || var.DataFactoryAlertSSISIntegrationStopStuckedWindow == "PT15M" || var.DataFactoryAlertSSISIntegrationStopStuckedWindow == "PT30M" || var.DataFactoryAlertSSISIntegrationStopStuckedWindow == "PT1H" || var.DataFactoryAlertSSISIntegrationStopStuckedWindow == "PT6H" || var.DataFactoryAlertSSISIntegrationStopStuckedWindow == "PT2H" || var.DataFactoryAlertSSISIntegrationStopStuckedWindow == "PT1D")
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D."
  }
}
variable "DataFactoryAlertSSISIntegrationStopStuckedAutoResolve" {
  type    = bool
  default = true
}
variable "DataFactoryAlertSSISIntegrationStopStuckedThreshold" {
  type    = number
  default = 0
  validation {
      condition = var.DataFactoryAlertSSISIntegrationStopStuckedThreshold >= 0
      error_message = "Value must be a positive number or 0."
  }
}
variable "DataFactoryAlertSSISIntegrationStopStuckedRuntimeNames" {
  type    = list(string)
  default = ["*"]
}
variable "DataFactoryAlertSSISIntegrationStopStuckedActionGroupIDs" {
  type    = set(string)
  default = []
}

###########################################
#### AlertSSISIntegrationStopSucceeded ####
###########################################

variable "DataFactoryAlertSSISIntegrationStopSucceededCreated" {
  type    = bool
  default = false
}
variable "DataFactoryAlertSSISIntegrationStopSucceededEnabled" {
  type    = bool
  default = true
}
variable "DataFactoryAlertSSISIntegrationStopSucceededSeverity" {
  description = "The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3."
  type    = number
  default = 3
  validation {
      condition = (var.DataFactoryAlertSSISIntegrationStopSucceededSeverity >= 0 && var.DataFactoryAlertSSISIntegrationStopSucceededSeverity <= 4)
      error_message = "Value must be between 0-4. The lower the higher."
  }
}
variable "DataFactoryAlertSSISIntegrationStopSucceededFrequency" {
  description = "The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M."
  type    = string
  default = "PT1M"
  validation {
      condition = (var.DataFactoryAlertSSISIntegrationStopSucceededFrequency == "PT1M" || var.DataFactoryAlertSSISIntegrationStopSucceededFrequency == "PT5M" || var.DataFactoryAlertSSISIntegrationStopSucceededFrequency == "PT15M" || var.DataFactoryAlertSSISIntegrationStopSucceededFrequency == "PT30M" || var.DataFactoryAlertSSISIntegrationStopSucceededFrequency == "PT1H" )
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M and PT1H."
  }
}
variable "DataFactoryAlertSSISIntegrationStopSucceededWindow" {
  description = "The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency."
  type    = string
  default = null
  validation {
      condition = (var.DataFactoryAlertSSISIntegrationStopSucceededWindow == null || var.DataFactoryAlertSSISIntegrationStopSucceededWindow == "PT1M" || var.DataFactoryAlertSSISIntegrationStopSucceededWindow == "PT5M" || var.DataFactoryAlertSSISIntegrationStopSucceededWindow == "PT15M" || var.DataFactoryAlertSSISIntegrationStopSucceededWindow == "PT30M" || var.DataFactoryAlertSSISIntegrationStopSucceededWindow == "PT1H" || var.DataFactoryAlertSSISIntegrationStopSucceededWindow == "PT6H" || var.DataFactoryAlertSSISIntegrationStopSucceededWindow == "PT2H" || var.DataFactoryAlertSSISIntegrationStopSucceededWindow == "PT1D")
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D."
  }
}
variable "DataFactoryAlertSSISIntegrationStopSucceededAutoResolve" {
  type    = bool
  default = true
}
variable "DataFactoryAlertSSISIntegrationStopSucceededThreshold" {
  type    = number
  default = 0
  validation {
      condition = var.DataFactoryAlertSSISIntegrationStopSucceededThreshold >= 0
      error_message = "Value must be a positive number or 0."
  }
}
variable "DataFactoryAlertSSISIntegrationStopSucceededRuntimeNames" {
  type    = list(string)
  default = ["*"]
}
variable "DataFactoryAlertSSISIntegrationStopSucceededActionGroupIDs" {
  type    = set(string)
  default = []
}

##############################################
################ SSIS Package ################
##############################################

###################################
#### AlertSSISPackageCancelled ####
###################################

variable "DataFactoryAlertSSISPackageCancelledCreated" {
  type    = bool
  default = false
}
variable "DataFactoryAlertSSISPackageCancelledEnabled" {
  type    = bool
  default = true
}
variable "DataFactoryAlertSSISPackageCancelledSeverity" {
  description = "The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3."
  type    = number
  default = 3
  validation {
      condition = (var.DataFactoryAlertSSISPackageCancelledSeverity >= 0 && var.DataFactoryAlertSSISPackageCancelledSeverity <= 4)
      error_message = "Value must be between 0-4. The lower the higher."
  }
}
variable "DataFactoryAlertSSISPackageCancelledFrequency" {
  description = "The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M."
  type    = string
  default = "PT1M"
  validation {
      condition = (var.DataFactoryAlertSSISPackageCancelledFrequency == "PT1M" || var.DataFactoryAlertSSISPackageCancelledFrequency == "PT5M" || var.DataFactoryAlertSSISPackageCancelledFrequency == "PT15M" || var.DataFactoryAlertSSISPackageCancelledFrequency == "PT30M" || var.DataFactoryAlertSSISPackageCancelledFrequency == "PT1H" )
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M and PT1H."
  }
}
variable "DataFactoryAlertSSISPackageCancelledWindow" {
  description = "The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency."
  type    = string
  default = null
  validation {
      condition = (var.DataFactoryAlertSSISPackageCancelledWindow == null || var.DataFactoryAlertSSISPackageCancelledWindow == "PT1M" || var.DataFactoryAlertSSISPackageCancelledWindow == "PT5M" || var.DataFactoryAlertSSISPackageCancelledWindow == "PT15M" || var.DataFactoryAlertSSISPackageCancelledWindow == "PT30M" || var.DataFactoryAlertSSISPackageCancelledWindow == "PT1H" || var.DataFactoryAlertSSISPackageCancelledWindow == "PT6H" || var.DataFactoryAlertSSISPackageCancelledWindow == "PT2H" || var.DataFactoryAlertSSISPackageCancelledWindow == "PT1D")
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D."
  }
}
variable "DataFactoryAlertSSISPackageCancelledAutoResolve" {
  type    = bool
  default = true
}
variable "DataFactoryAlertSSISPackageCancelledThreshold" {
  type    = number
  default = 0
  validation {
      condition = var.DataFactoryAlertSSISPackageCancelledThreshold >= 0
      error_message = "Value must be a positive number or 0."
  }
}
variable "DataFactoryAlertSSISPackageCancelledRuntimeNames" {
  type    = list(string)
  default = ["*"]
}
variable "DataFactoryAlertSSISPackageCancelledActionGroupIDs" {
  type    = set(string)
  default = []
}

################################
#### AlertSSISPackageFailed ####
################################

variable "DataFactoryAlertSSISPackageFailedCreated" {
  type    = bool
  default = false
}
variable "DataFactoryAlertSSISPackageFailedEnabled" {
  type    = bool
  default = true
}
variable "DataFactoryAlertSSISPackageFailedSeverity" {
  description = "The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3."
  type    = number
  default = 3
  validation {
      condition = (var.DataFactoryAlertSSISPackageFailedSeverity >= 0 && var.DataFactoryAlertSSISPackageFailedSeverity <= 4)
      error_message = "Value must be between 0-4. The lower the higher."
  }
}
variable "DataFactoryAlertSSISPackageFailedFrequency" {
  description = "The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M."
  type    = string
  default = "PT1M"
  validation {
      condition = (var.DataFactoryAlertSSISPackageFailedFrequency == "PT1M" || var.DataFactoryAlertSSISPackageFailedFrequency == "PT5M" || var.DataFactoryAlertSSISPackageFailedFrequency == "PT15M" || var.DataFactoryAlertSSISPackageFailedFrequency == "PT30M" || var.DataFactoryAlertSSISPackageFailedFrequency == "PT1H" )
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M and PT1H."
  }
}
variable "DataFactoryAlertSSISPackageFailedWindow" {
  description = "The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency."
  type    = string
  default = null
  validation {
      condition = (var.DataFactoryAlertSSISPackageFailedWindow == null || var.DataFactoryAlertSSISPackageFailedWindow == "PT1M" || var.DataFactoryAlertSSISPackageFailedWindow == "PT5M" || var.DataFactoryAlertSSISPackageFailedWindow == "PT15M" || var.DataFactoryAlertSSISPackageFailedWindow == "PT30M" || var.DataFactoryAlertSSISPackageFailedWindow == "PT1H" || var.DataFactoryAlertSSISPackageFailedWindow == "PT6H" || var.DataFactoryAlertSSISPackageFailedWindow == "PT2H" || var.DataFactoryAlertSSISPackageFailedWindow == "PT1D")
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D."
  }
}
variable "DataFactoryAlertSSISPackageFailedAutoResolve" {
  type    = bool
  default = true
}
variable "DataFactoryAlertSSISPackageFailedThreshold" {
  type    = number
  default = 0
  validation {
      condition = var.DataFactoryAlertSSISPackageFailedThreshold >= 0
      error_message = "Value must be a positive number or 0."
  }
}
variable "DataFactoryAlertSSISPackageFailedRuntimeNames" {
  type    = list(string)
  default = ["*"]
}
variable "DataFactoryAlertSSISPackageFailedActionGroupIDs" {
  type    = set(string)
  default = []
}

################################
#### AlertSSISPackageSucceeded ####
################################

variable "DataFactoryAlertSSISPackageSucceededCreated" {
  type    = bool
  default = false
}
variable "DataFactoryAlertSSISPackageSucceededEnabled" {
  type    = bool
  default = true
}
variable "DataFactoryAlertSSISPackageSucceededSeverity" {
  description = "The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3."
  type    = number
  default = 3
  validation {
      condition = (var.DataFactoryAlertSSISPackageSucceededSeverity >= 0 && var.DataFactoryAlertSSISPackageSucceededSeverity <= 4)
      error_message = "Value must be between 0-4. The lower the higher."
  }
}
variable "DataFactoryAlertSSISPackageSucceededFrequency" {
  description = "The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M."
  type    = string
  default = "PT1M"
  validation {
      condition = (var.DataFactoryAlertSSISPackageSucceededFrequency == "PT1M" || var.DataFactoryAlertSSISPackageSucceededFrequency == "PT5M" || var.DataFactoryAlertSSISPackageSucceededFrequency == "PT15M" || var.DataFactoryAlertSSISPackageSucceededFrequency == "PT30M" || var.DataFactoryAlertSSISPackageSucceededFrequency == "PT1H" )
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M and PT1H."
  }
}
variable "DataFactoryAlertSSISPackageSucceededWindow" {
  description = "The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency."
  type    = string
  default = null
  validation {
      condition = (var.DataFactoryAlertSSISPackageSucceededWindow == null || var.DataFactoryAlertSSISPackageSucceededWindow == "PT1M" || var.DataFactoryAlertSSISPackageSucceededWindow == "PT5M" || var.DataFactoryAlertSSISPackageSucceededWindow == "PT15M" || var.DataFactoryAlertSSISPackageSucceededWindow == "PT30M" || var.DataFactoryAlertSSISPackageSucceededWindow == "PT1H" || var.DataFactoryAlertSSISPackageSucceededWindow == "PT6H" || var.DataFactoryAlertSSISPackageSucceededWindow == "PT2H" || var.DataFactoryAlertSSISPackageSucceededWindow == "PT1D")
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D."
  }
}
variable "DataFactoryAlertSSISPackageSucceededAutoResolve" {
  type    = bool
  default = true
}
variable "DataFactoryAlertSSISPackageSucceededThreshold" {
  type    = number
  default = 0
  validation {
      condition = var.DataFactoryAlertSSISPackageSucceededThreshold >= 0
      error_message = "Value must be a positive number or 0."
  }
}
variable "DataFactoryAlertSSISPackageSucceededRuntimeNames" {
  type    = list(string)
  default = ["*"]
}
variable "DataFactoryAlertSSISPackageSucceededActionGroupIDs" {
  type    = set(string)
  default = []
}

##############################################
################ Factory Size ################
##############################################

#################################
#### AlertTotalFactorySizeGB ####
#################################

variable "DataFactoryAlertTotalFactorySizeGBCreated" {
  type    = bool
  default = false
}
variable "DataFactoryAlertTotalFactorySizeGBEnabled" {
  type    = bool
  default = true
}
variable "DataFactoryAlertTotalFactorySizeGBSeverity" {
  description = "The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3."
  type    = number
  default = 3
  validation {
      condition = (var.DataFactoryAlertTotalFactorySizeGBSeverity >= 0 && var.DataFactoryAlertTotalFactorySizeGBSeverity <= 4)
      error_message = "Value must be between 0-4. The lower the higher."
  }
}
variable "DataFactoryAlertTotalFactorySizeGBFrequency" {
  description = "The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M."
  type    = string
  default = "PT1M"
  validation {
      condition = (var.DataFactoryAlertTotalFactorySizeGBFrequency == "PT1M" || var.DataFactoryAlertTotalFactorySizeGBFrequency == "PT5M" || var.DataFactoryAlertTotalFactorySizeGBFrequency == "PT15M" || var.DataFactoryAlertTotalFactorySizeGBFrequency == "PT30M" || var.DataFactoryAlertTotalFactorySizeGBFrequency == "PT1H" )
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M and PT1H."
  }
}
variable "DataFactoryAlertTotalFactorySizeGBWindow" {
  description = "The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency."
  type    = string
  default = null
  validation {
      condition = (var.DataFactoryAlertTotalFactorySizeGBWindow == null || var.DataFactoryAlertTotalFactorySizeGBWindow == "PT1M" || var.DataFactoryAlertTotalFactorySizeGBWindow == "PT5M" || var.DataFactoryAlertTotalFactorySizeGBWindow == "PT15M" || var.DataFactoryAlertTotalFactorySizeGBWindow == "PT30M" || var.DataFactoryAlertTotalFactorySizeGBWindow == "PT1H" || var.DataFactoryAlertTotalFactorySizeGBWindow == "PT6H" || var.DataFactoryAlertTotalFactorySizeGBWindow == "PT2H" || var.DataFactoryAlertTotalFactorySizeGBWindow == "PT1D")
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D."
  }
}
variable "DataFactoryAlertTotalFactorySizeGBAutoResolve" {
  type    = bool
  default = true
}
variable "DataFactoryAlertTotalFactorySizeGBThreshold" {
  type    = number
  default = 1
  validation {
      condition = var.DataFactoryAlertTotalFactorySizeGBThreshold >= 1
      error_message = "Value must be a positive number."
  }
}
variable "DataFactoryAlertTotalFactorySizeGBActionGroupIDs" {
  type    = set(string)
  default = []
}

###################################
#### AlertMaximumFactorySizeGB ####
###################################

variable "DataFactoryAlertMaximumFactorySizeGBCreated" {
  type    = bool
  default = false
}
variable "DataFactoryAlertMaximumFactorySizeGBEnabled" {
  type    = bool
  default = true
}
variable "DataFactoryAlertMaximumFactorySizeGBSeverity" {
  description = "The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3."
  type    = number
  default = 3
  validation {
      condition = (var.DataFactoryAlertMaximumFactorySizeGBSeverity >= 0 && var.DataFactoryAlertMaximumFactorySizeGBSeverity <= 4)
      error_message = "Value must be between 0-4. The lower the higher."
  }
}
variable "DataFactoryAlertMaximumFactorySizeGBFrequency" {
  description = "The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M."
  type    = string
  default = "PT1M"
  validation {
      condition = (var.DataFactoryAlertMaximumFactorySizeGBFrequency == "PT1M" || var.DataFactoryAlertMaximumFactorySizeGBFrequency == "PT5M" || var.DataFactoryAlertMaximumFactorySizeGBFrequency == "PT15M" || var.DataFactoryAlertMaximumFactorySizeGBFrequency == "PT30M" || var.DataFactoryAlertMaximumFactorySizeGBFrequency == "PT1H" )
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M and PT1H."
  }
}
variable "DataFactoryAlertMaximumFactorySizeGBWindow" {
  description = "The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency."
  type    = string
  default = null
  validation {
      condition = (var.DataFactoryAlertMaximumFactorySizeGBWindow == null || var.DataFactoryAlertMaximumFactorySizeGBWindow == "PT1M" || var.DataFactoryAlertMaximumFactorySizeGBWindow == "PT5M" || var.DataFactoryAlertMaximumFactorySizeGBWindow == "PT15M" || var.DataFactoryAlertMaximumFactorySizeGBWindow == "PT30M" || var.DataFactoryAlertMaximumFactorySizeGBWindow == "PT1H" || var.DataFactoryAlertMaximumFactorySizeGBWindow == "PT6H" || var.DataFactoryAlertMaximumFactorySizeGBWindow == "PT2H" || var.DataFactoryAlertMaximumFactorySizeGBWindow == "PT1D")
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D."
  }
}
variable "DataFactoryAlertMaximumFactorySizeGBAutoResolve" {
  type    = bool
  default = true
}
variable "DataFactoryAlertMaximumFactorySizeGBThreshold" {
  type    = number
  default = 10
  validation {
      condition = var.DataFactoryAlertMaximumFactorySizeGBThreshold >= 1
      error_message = "Value must be a positive number."
  }
}
variable "DataFactoryAlertMaximumFactorySizeGBActionGroupIDs" {
  type    = set(string)
  default = []
}

################################################
################ Entities Count ################
################################################

#################################
#### AlertTotalEntitiesCount ####
#################################

variable "DataFactoryAlertTotalEntitiesCountCreated" {
  type    = bool
  default = false
}
variable "DataFactoryAlertTotalEntitiesCountEnabled" {
  type    = bool
  default = true
}
variable "DataFactoryAlertTotalEntitiesCountSeverity" {
  description = "The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3."
  type    = number
  default = 3
  validation {
      condition = (var.DataFactoryAlertTotalEntitiesCountSeverity >= 0 && var.DataFactoryAlertTotalEntitiesCountSeverity <= 4)
      error_message = "Value must be between 0-4. The lower the higher."
  }
}
variable "DataFactoryAlertTotalEntitiesCountFrequency" {
  description = "The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M."
  type    = string
  default = "PT1M"
  validation {
      condition = (var.DataFactoryAlertTotalEntitiesCountFrequency == "PT1M" || var.DataFactoryAlertTotalEntitiesCountFrequency == "PT5M" || var.DataFactoryAlertTotalEntitiesCountFrequency == "PT15M" || var.DataFactoryAlertTotalEntitiesCountFrequency == "PT30M" || var.DataFactoryAlertTotalEntitiesCountFrequency == "PT1H" )
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M and PT1H."
  }
}
variable "DataFactoryAlertTotalEntitiesCountWindow" {
  description = "The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency."
  type    = string
  default = null
  validation {
      condition = (var.DataFactoryAlertTotalEntitiesCountWindow == null || var.DataFactoryAlertTotalEntitiesCountWindow == "PT1M" || var.DataFactoryAlertTotalEntitiesCountWindow == "PT5M" || var.DataFactoryAlertTotalEntitiesCountWindow == "PT15M" || var.DataFactoryAlertTotalEntitiesCountWindow == "PT30M" || var.DataFactoryAlertTotalEntitiesCountWindow == "PT1H" || var.DataFactoryAlertTotalEntitiesCountWindow == "PT6H" || var.DataFactoryAlertTotalEntitiesCountWindow == "PT2H" || var.DataFactoryAlertTotalEntitiesCountWindow == "PT1D")
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D."
  }
}
variable "DataFactoryAlertTotalEntitiesCountAutoResolve" {
  type    = bool
  default = true
}
variable "DataFactoryAlertTotalEntitiesCountThreshold" {
  type    = number
  default = 100
  validation {
      condition = var.DataFactoryAlertTotalEntitiesCountThreshold >= 1
      error_message = "Value must be a positive number."
  }
}
variable "DataFactoryAlertTotalEntitiesCountActionGroupIDs" {
  type    = set(string)
  default = []
}

###################################
#### AlertMaximumEntitiesCount ####
###################################

variable "DataFactoryAlertMaximumEntitiesCountCreated" {
  type    = bool
  default = false
}
variable "DataFactoryAlertMaximumEntitiesCountEnabled" {
  type    = bool
  default = true
}
variable "DataFactoryAlertMaximumEntitiesCountSeverity" {
  description = "The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3."
  type    = number
  default = 3
  validation {
      condition = (var.DataFactoryAlertMaximumEntitiesCountSeverity >= 0 && var.DataFactoryAlertMaximumEntitiesCountSeverity <= 4)
      error_message = "Value must be between 0-4. The lower the higher."
  }
}
variable "DataFactoryAlertMaximumEntitiesCountFrequency" {
  description = "The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M."
  type    = string
  default = "PT1M"
  validation {
      condition = (var.DataFactoryAlertMaximumEntitiesCountFrequency == "PT1M" || var.DataFactoryAlertMaximumEntitiesCountFrequency == "PT5M" || var.DataFactoryAlertMaximumEntitiesCountFrequency == "PT15M" || var.DataFactoryAlertMaximumEntitiesCountFrequency == "PT30M" || var.DataFactoryAlertMaximumEntitiesCountFrequency == "PT1H" )
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M and PT1H."
  }
}
variable "DataFactoryAlertMaximumEntitiesCountWindow" {
  description = "The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency."
  type    = string
  default = null
  validation {
      condition = (var.DataFactoryAlertMaximumEntitiesCountWindow == null || var.DataFactoryAlertMaximumEntitiesCountWindow == "PT1M" || var.DataFactoryAlertMaximumEntitiesCountWindow == "PT5M" || var.DataFactoryAlertMaximumEntitiesCountWindow == "PT15M" || var.DataFactoryAlertMaximumEntitiesCountWindow == "PT30M" || var.DataFactoryAlertMaximumEntitiesCountWindow == "PT1H" || var.DataFactoryAlertMaximumEntitiesCountWindow == "PT6H" || var.DataFactoryAlertMaximumEntitiesCountWindow == "PT2H" || var.DataFactoryAlertMaximumEntitiesCountWindow == "PT1D")
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D."
  }
}
variable "DataFactoryAlertMaximumEntitiesCountAutoResolve" {
  type    = bool
  default = true
}
variable "DataFactoryAlertMaximumEntitiesCountThreshold" {
  type    = number
  default = 1000
  validation {
      condition = var.DataFactoryAlertMaximumEntitiesCountThreshold >= 1
      error_message = "Value must be a positive number."
  }
}
variable "DataFactoryAlertMaximumEntitiesCountActionGroupIDs" {
  type    = set(string)
  default = []
}
