package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import pl.coderslab.entity.Tweet;

public interface TweetRepository extends JpaRepository<Tweet, Long> {

}
