global class ActivityTimeline_Model implements Comparable {
    
    @AuraEnabled
    public Id RecordId {get;set;}
    
    @AuraEnabled
    public String ActivityTimelineType {get;set;}
    
    @AuraEnabled
    public String Subject {get;set;}
    
    @AuraEnabled
    public String Detail {get;set;}
    
    // Short event
    @AuraEnabled
    public String ShortDate {get;set;}
    
    // Text form of event duration
    @AuraEnabled
    public String EventTime {get;set;}
    
    // Task related to, Email "to", or list of attendees for events
    @AuraEnabled
    public String Recipients {get;set;}
    
    // Task/Event Asignee, or Email From
    @AuraEnabled
    public String Assigned {get;set;}
    
    // For indicating task completion
    @AuraEnabled
    public boolean Complete {get;set;}
    
    public DateTime ActualDate {get;set;}

    global Integer compareTo(Object objToCompare)
    {
        DateTime otherActualDate = objToCompare != null ? ((ActivityTimeline_Model)objToCompare).ActualDate : System.now();
        
        return (this.ActualDate.getTime() - otherActualDate.getTime()).intValue();
        
      
    }
    
}