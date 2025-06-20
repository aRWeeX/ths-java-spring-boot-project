package com.example.ths_java_spring_boot_project.entity;

import jakarta.persistence.*;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "loans")
public class Loan {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "loan_id")
    private Long id;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @OneToMany(mappedBy = "loan", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<LoanBook> loanBooks = new ArrayList<>();

    @Column(name = "borrowed_date")
    private LocalDateTime borrowedDate;

    @Column(name = "due_date")
    private LocalDateTime dueDate;

    @Column(name = "returned_date")
    private LocalDateTime returnedDate;

    public Loan() {}

    public Loan(User user, LocalDateTime borrowedDate, LocalDateTime dueDate,
                LocalDateTime returnedDate) {
        this.user = user;
        this.borrowedDate = borrowedDate;
        this.dueDate = dueDate;
        this.returnedDate = returnedDate;
    }

    public Loan(Long id, User user, LocalDateTime borrowedDate,
                LocalDateTime dueDate, LocalDateTime returnedDate) {
        this.id = id;
        this.user = user;
        this.borrowedDate = borrowedDate;
        this.dueDate = dueDate;
        this.returnedDate = returnedDate;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<LoanBook> getLoanBooks() {
        return loanBooks;
    }

    public void setLoanBooks(List<LoanBook> loanBooks) {
        this.loanBooks = loanBooks;
    }

    public LocalDateTime getBorrowedDate() {
        return borrowedDate;
    }

    public void setBorrowedDate(LocalDateTime borrowedDate) {
        this.borrowedDate = borrowedDate;
    }

    public LocalDateTime getDueDate() {
        return dueDate;
    }

    public void setDueDate(LocalDateTime dueDate) {
        this.dueDate = dueDate;
    }

    public LocalDateTime getReturnedDate() {
        return returnedDate;
    }

    public void setReturnedDate(LocalDateTime returnedDate) {
        this.returnedDate = returnedDate;
    }

    public void addLoanBook(LoanBook loanBook) {
        loanBooks.add(loanBook);
        loanBook.setLoan(this);
    }

    public void removeLoanBook(LoanBook loanBook) {
        loanBooks.remove(loanBook);
        loanBook.setLoan(null);
    }

    @Override
    public String toString() {
        return "Loan{" +
                "id=" + id +
                ", user=" + (user != null ? user.getId() : null) +
                ", borrowedDate=" + borrowedDate +
                ", dueDate=" + dueDate +
                ", returnedDate=" + returnedDate +
                '}';
    }
}
