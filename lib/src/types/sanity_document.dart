part of 'package:sanity_client_flutter/sanity_client_flutter.dart';

/// Sanity document model
class SanityDocument {
  /// Get/Set sanity document internal revision
  String id;

  /// Get/Set sanity document internal revision
  String rev;

  /// Get/Set sanity document type
  String type;

  /// Get/Set sanity document created timestamp
  String createdAt;

  /// Get/Set sanity document updated timestamp
  String updatedAt;

  /// Convert json to [SanityDocument]
  SanityDocument.fromJson(dynamic json) {
    if (json == null) {
      return;
    }

    id = json['_id'];
    rev = json['_rev'];
    type = json['_type'];
    createdAt = json['_createdAt'];
    updatedAt = json['_updatedAt'];
  }
}

/// Sanity document response
class SanityResponse<T> {
  /// Status message
  final String statusMessage;

  /// Status message
  final int statusCode;

  /// Sanity data
  final T data;

  /// Constructor
  SanityResponse({
    this.statusMessage,
    this.statusCode,
    this.data,
  });
}

/// Filtered sanity request. It extends [RequestOptions]
class FilterResponseQueryOptions extends RequestOptions {
  /// Boolean flag to filter request
  bool filterResponse = true;
}

/// Sanity mutation visibility
enum MutationVisibility {
  /// Mutation is is sync
  sync,

  /// Mutation is is async
  async,

  /// Defer mutation call
  defer,
}

/// Base sanity mutation type
class BaseMutationOptions extends RequestOptions {
  /// Mutation visibility
  MutationVisibility visibility;

  /// Should return all document
  bool returnDocuments;

  /// return first document
  bool returnFirst;
}