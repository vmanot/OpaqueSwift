//
// Copyright (c) Vatsal Manot
//

import Swift

extension AnySequence: OpaqueRepresentable
{
    public typealias OpaqueRepresentation = opaque_Sequence
    
    public var opaqueRepresentation: OpaqueRepresentation
    {
        return self
    }
    
    public init?(opaque: OpaqueRepresentation)
    {
        self.init(_optional: -?>opaque.opaque_Sequence_toAnySequence())
    }
}

extension AnyCollection: OpaqueRepresentable
{
    public typealias OpaqueRepresentation = opaque_Collection
    
    public var opaqueRepresentation: OpaqueRepresentation
    {
        return self
    }
    
    public init?(opaque: OpaqueRepresentation)
    {
        self.init(_optional: -?>opaque.opaque_Collection_toAnyCollection())
    }
}

extension AnyBidirectionalCollection: OpaqueRepresentable
{
    public typealias OpaqueRepresentation = opaque_BidirectionalCollection
    
    public var opaqueRepresentation: OpaqueRepresentation
    {
        return self
    }
    
    public init?(opaque: OpaqueRepresentation)
    {
        self.init(_optional: -?>opaque.opaque_Collection_toAnyCollection())
    }
}

extension Optional: OpaqueRepresentable
{
    public typealias OpaqueRepresentation = opaque_Optional
    
    public var opaqueRepresentation: OpaqueRepresentation
    {
        return self
    }

    public init?(opaque: OpaqueRepresentation)
    {
        guard let _self = opaque as? Wrapped else
        {
            if opaque is _Self.Type
            {
                self = nil
                
                return
            }
                
            else
            {
                return nil
            }
        }
        
        self = _self
    }
}
