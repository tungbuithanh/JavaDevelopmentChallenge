package ch.neosisit.ipension.portalservices.first.dto.api;

import ch.neosisit.ipension.frontoffice.commons.dto.BaseResponseObject;
import ch.neosisit.ipension.frontoffice.commons.dto.Status;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 *
 * @author DNH
 */
@Data
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ApiModel(description = "The response object for employees services")
public class EmployeeResponseObject extends BaseResponseObject {

    @ApiModelProperty(notes = "Employee including Adresse, Insured Person and Work Relation data")
    private SalariedEmployee employee;

    @Builder
    public EmployeeResponseObject(Status status, SalariedEmployee employee) {
        super(status);
        this.employee = employee;
    }
}
