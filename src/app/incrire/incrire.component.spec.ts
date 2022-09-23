import { ComponentFixture, TestBed } from '@angular/core/testing';

import { IncrireComponent } from './incrire.component';

describe('IncrireComponent', () => {
  let component: IncrireComponent;
  let fixture: ComponentFixture<IncrireComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ IncrireComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(IncrireComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
