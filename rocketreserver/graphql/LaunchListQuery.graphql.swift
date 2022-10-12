// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI
@_exported import enum ApolloAPI.GraphQLEnum
@_exported import enum ApolloAPI.GraphQLNullable
import Rocketreseverschema

public class LaunchListQuery: GraphQLQuery {
  public static let operationName: String = "LaunchListQuery"
  public static let document: DocumentType = .notPersisted(
    definition: .init(
      """
      query LaunchListQuery {
        launches {
          __typename
          launches {
            __typename
            id
            site
          }
        }
      }
      """
    ))

  public init() {}

  public struct Data: Rocketreseverschema.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ParentType { Rocketreseverschema.Objects.Query }
    public static var __selections: [Selection] { [
      .field("launches", Launches.self),
    ] }

    public var launches: Launches { __data["launches"] }

    /// Launches
    ///
    /// Parent Type: `LaunchConnection`
    public struct Launches: Rocketreseverschema.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ParentType { Rocketreseverschema.Objects.LaunchConnection }
      public static var __selections: [Selection] { [
        .field("launches", [Launch?].self),
      ] }

      public var launches: [Launch?] { __data["launches"] }

      /// Launches.Launch
      ///
      /// Parent Type: `Launch`
      public struct Launch: Rocketreseverschema.SelectionSet {
        public let __data: DataDict
        public init(data: DataDict) { __data = data }

        public static var __parentType: ParentType { Rocketreseverschema.Objects.Launch }
        public static var __selections: [Selection] { [
          .field("id", rocketreseverschema.ID.self),
          .field("site", String?.self),
        ] }

        public var id: rocketreseverschema.ID { __data["id"] }
        public var site: String? { __data["site"] }
      }
    }
  }
}
