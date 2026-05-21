package dk.kinoxp.kinoxpupdate.repository;

import dk.kinoxp.kinoxpupdate.model.Movie;
import org.springframework.data.jpa.repository.JpaRepository;
public interface MovieRepository extends JpaRepository<Movie, Long> {}
