package edu.jspider.trainproject.dto;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="train_db")
public class Train 	implements Serializable
{
	@Id
	@Column(name="train_id")
	private int trainId;
	@Column(name="train_name")
	private String trainName;
	@Column(name="source")
	private String source;
	@Column(name="destination")
	private String destination;
	@Column(name="arrival_time")
	private String arrivalTime;
	@Column(name="departure_time")
	private String departureTime;
	
	public int getTrainId() {
		return trainId;
	}
	public void setTrainId(int trainId) {
		this.trainId = trainId;
	}
	public String getTrainName() {
		return trainName;
	}
	public void setTrainName(String trainName) {
		this.trainName = trainName;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public String getArrivalTime() {
		return arrivalTime;
	}
	public void setArrivalTime(String arrivalTime) {
		this.arrivalTime = arrivalTime;
	}
	public String getDepartureTime() {
		return departureTime;
	}
	public void setDepartureTime(String departureTime) {
		this.departureTime = departureTime;
	}
	@Override
	public String toString() {
		return "Train [trainId=" + trainId + ", trainName=" + trainName + ", source=" + source + ", destination="
				+ destination + ", arrivalTime=" + arrivalTime + ", departureTime=" + departureTime + "]";
	}
	
	
	
}
