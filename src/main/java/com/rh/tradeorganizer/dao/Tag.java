package com.rh.tradeorganizer.dao;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "tags")
@Getter @Setter
public class Tag implements Serializable {
    @Id
    @Column(name = "tag_id", nullable = false)
    private Integer tagId;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "tag_creation_date")
    private Date tagCreationDate;

    @Column(name = "tag_name")
    private String tagName;
}
