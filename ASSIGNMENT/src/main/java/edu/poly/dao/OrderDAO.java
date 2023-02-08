package edu.poly.dao;

import edu.poly.model.Order;
import edu.poly.model.RevenuePrice;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import javax.transaction.Transactional;
import java.util.List;
@Transactional
public interface OrderDAO extends JpaRepository<Order, Long> {
    List<Order> findAllByAccount_Id(long id);
    List<Order> findAllById(long id);
    @Query("SELECT new RevenuePrice( sum(o.price)) "
            + " FROM Order o  "
            + " ORDER BY sum(o.price) DESC")
    List<RevenuePrice> getPriceWhenDay();
@Query(value = "Select sum(price)  from orders where  Year(createDate) = Year(GetDate()) ",nativeQuery = true)
Float selectTotals();
    @Query(value = "Select sum(price)  from orders where  Month(createDate) = Month(GetDate()) ",nativeQuery = true)
    Float selectTotalsMonth();
    @Query(value = "Select sum(price) as price, MONTH(createDate)  as month, YEAR(createDate) as year from orders group by Month(createDate), YEAR(createDate) having YEAR(createDate) = ?1",nativeQuery = true)
    List<Object[]> selectTotalsMonths(int number);
    
    @Query(value = "	select distinct Year(createDate) as year from orders", nativeQuery = true)
    List<Object[]> selectAllYears();

}
