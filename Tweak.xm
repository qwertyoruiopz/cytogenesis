%hook SACreateAssistant
-(NSData *)validationData {
    return [self propertyForKey:@"validationData"];
}
-(void) setValidationData:(NSData *) _data {
    NSLog(@"LOL WUT");
    NSDictionary* omgDictionary=[[NSDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/com.vlo.libsandwich.plist"]; 
    NSData *_validationData = [omgDictionary objectForKey:@"ValidationData"];
    NSLog(@"passed data: %@", _data);
    NSLog(@"current session validation data: %@", _validationData);
    [self setProperty:[_validationData retain] forKey:@"validationData"];
    [omgDictionary release];
}
%end
%hook SALoadAssistant
-(NSData *)sessionValidationData {
    return [self propertyForKey:@"sessionValidationData"];
}
-(void) setSessionValidationData:(NSData *) _data {
    NSLog(@"LOL WUT");
    NSDictionary* omgDictionary=[[NSDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/com.vlo.libsandwich.plist"]; 
    NSData *_validationData = [omgDictionary objectForKey:@"ValidationData"];
    NSLog(@"passed data: %@", _data);
    NSLog(@"current session validation data: %@", _validationData);
    [self setProperty:[_validationData retain] forKey:@"sessionValidationData"];
    [omgDictionary release];
}
%end
