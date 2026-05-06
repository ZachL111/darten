import '../lib/domain_review.dart';

void main() {
  const item = DomainReview(47, 43, 9, 54);
  assert(DomainReviewLens.score(item) == 164);
  assert(DomainReviewLens.lane(item) == 'ship');
}
