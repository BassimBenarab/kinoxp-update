package dk.kinoxp.kinoxpupdate.repository;

import dk.kinoxp.kinoxpupdate.model.Reservation;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface ReservationRepository extends JpaRepository<Reservation, Long> {
    List<Reservation> findByShowingId(Long showingId);
}
